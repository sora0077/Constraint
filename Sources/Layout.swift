//
//  Layout.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/05.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation
import class UIKit.UIView

public final class Layout<Base> {
    public enum Direction {
        case natural
        case leftToRight
    }

    private let base: Base
    private let installer: ConstraintInstaller
    private var cache: [String: Any] = [:]

    init(_ base: Base, installer: ConstraintInstaller) {
        self.base = base
        self.installer = installer
    }

    func root() -> Layout {
        if let view = base as? UIView {
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        return self
    }

    private func cached<T>(_ key: String = #function, initial: @autoclosure () -> T) -> T {
        if let cached = cache[key] as? T {
            return cached
        } else {
            let value = initial()
            cache[key] = value
            return value
        }
    }
}

final class ConstraintInstaller {
    private var constraints: [NSLayoutConstraint] = []

    func install(_ constraint: NSLayoutConstraint,
                 priority: UILayoutPriority,
                 _ file: StaticString, _ line: UInt
    ) -> NSLayoutConstraint {
        constraint.priority = priority
        constraint.identifier = makeDescription(constraint, file: file, line: line)
        constraints.append(constraint)
        return constraint
    }

    func activate() {
        NSLayoutConstraint.activate(constraints)
    }
}

private func makeDescription(_ constraint: NSLayoutConstraint, file: StaticString, line: UInt) -> String {
    return "@\((file.description as NSString).lastPathComponent)#\(line)"
}

//
// MARK: - UIViewController
public extension Layout where Base: UIViewController {
    @available(iOS, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
    var top: Layout<UILayoutSupport> {
        return cached(initial: .init(base.topLayoutGuide, installer: installer))
    }

    @available(iOS, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.bottomAnchor instead of bottomLayoutGuide.topAnchor")
    var bottom: Layout<UILayoutSupport> {
        return cached(initial: .init(base.bottomLayoutGuide, installer: installer))
    }

    var view: Layout<UIView> {
        return cached(initial: .init(base.view, installer: installer))
    }

    var safeAreaEdge: EdgeAnchor {
        let view = self.view
        if #available(iOS 11.0, *) {
            return view.safeAreaEdge
        } else {
            return cached(initial: .init(top: top.bottom, left: view.leading, bottom: bottom.top, right: view.trailing))
        }
    }
}

//
// MARK: - UIView
public extension Layout where Base: UIView {
    @available(iOS 11.0, *)
    var safeArea: Layout<UILayoutGuide> {
        return cached(initial: .init(base.safeAreaLayoutGuide, installer: installer))
    }

    var readableContent: Layout<UILayoutGuide> {
        return cached(initial: .init(base.readableContentGuide, installer: installer))
    }

    var layoutMargins: Layout<UILayoutGuide> {
        return cached(initial: .init(base.layoutMarginsGuide, installer: installer))
    }

    var superview: Layout<UIView> {
        return cached(initial: .init(base.superview!, installer: installer))
    }

    var firstBaseline: YAnchor {
        return cached(initial: .init(base.firstBaselineAnchor, into: installer))
    }

    var lastBaseline: YAnchor {
        return cached(initial: .init(base.lastBaselineAnchor, into: installer))
    }

    var centerX: XAnchor {
        return cached(initial: .init(base.centerXAnchor, into: installer))
    }

    var centerY: YAnchor {
        return cached(initial: .init(base.centerYAnchor, into: installer))
    }

    var top: YAnchor {
        return cached(initial: .init(base.topAnchor, into: installer))
    }

    var bottom: YAnchor {
        return cached(initial: .init(base.bottomAnchor, into: installer))
    }

    var right: XAnchor {
        return cached(initial: .init(base.rightAnchor, into: installer))
    }

    var left: XAnchor {
        return cached(initial: .init(base.leftAnchor, into: installer))
    }

    var leading: XAnchor {
        return cached(initial: .init(base.leadingAnchor, into: installer))
    }

    var trailing: XAnchor {
        return cached(initial: .init(base.trailingAnchor, into: installer))
    }

    var width: DAnchor {
        return cached(initial: .init(base.widthAnchor, into: installer))
    }

    var height: DAnchor {
        return cached(initial: .init(base.heightAnchor, into: installer))
    }

    var center: XYAnchor {
        return cached(initial: .init(x: centerX, y: centerY))
    }

    var size: SizeAnchor {
        return cached(initial: .init(width: width, height: height))
    }

    var edge: EdgeAnchor {
        return cached(initial: .init(top: top, left: leading, bottom: bottom, right: trailing))
    }

    func edge(_ direction: Direction) -> EdgeAnchor {
        switch direction {
        case .natural:
            return cached("\(#function)\(#line)", initial: .init(top: top, left: leading, bottom: bottom, right: trailing))
        case .leftToRight:
            return cached("\(#function)\(#line)", initial: .init(top: top, left: left, bottom: bottom, right: right))
        }
    }

    var safeAreaEdge: EdgeAnchor {
        if #available(iOS 11.0, *) {
            let safeArea = self.safeArea
            return cached(initial: .init(top: safeArea.top, left: safeArea.leading,
                                         bottom: safeArea.bottom, right: safeArea.trailing))
        } else {
            return edge
        }
    }
}

public extension Layout where Base: UIScrollView {
    @available(iOS 11.0, *)
    var content: Layout<UILayoutGuide> {
        return cached(initial: .init(base.contentLayoutGuide, installer: installer))
    }

    @available(iOS 11.0, *)
    var frame: Layout<UILayoutGuide> {
        return cached(initial: .init(base.frameLayoutGuide, installer: installer))
    }
}

//
// MARK: - UILayoutGuide
public extension Layout where Base: UILayoutGuide {
    var centerX: XAnchor {
        return cached(initial: .init(base.centerXAnchor, into: installer))
    }

    var centerY: YAnchor {
        return cached(initial: .init(base.centerYAnchor, into: installer))
    }

    var top: YAnchor {
        return cached(initial: .init(base.topAnchor, into: installer))
    }

    var bottom: YAnchor {
        return cached(initial: .init(base.bottomAnchor, into: installer))
    }

    var right: XAnchor {
        return cached(initial: .init(base.rightAnchor, into: installer))
    }

    var left: XAnchor {
        return cached(initial: .init(base.leftAnchor, into: installer))
    }

    var leading: XAnchor {
        return cached(initial: .init(base.leadingAnchor, into: installer))
    }

    var trailing: XAnchor {
        return cached(initial: .init(base.trailingAnchor, into: installer))
    }

    var width: DAnchor {
        return cached(initial: .init(base.widthAnchor, into: installer))
    }

    var height: DAnchor {
        return cached(initial: .init(base.heightAnchor, into: installer))
    }

    var center: XYAnchor {
        return cached(initial: .init(x: centerX, y: centerY))
    }

    var size: SizeAnchor {
        return cached(initial: .init(width: width, height: height))
    }

    var edge: EdgeAnchor {
        return cached(initial: .init(top: top, left: leading, bottom: bottom, right: trailing))
    }

    func edge(_ direction: Direction) -> EdgeAnchor {
        switch direction {
        case .natural:
            return cached("\(#function)\(#line)", initial: .init(top: top, left: leading, bottom: bottom, right: trailing))
        case .leftToRight:
            return cached("\(#function)\(#line)", initial: .init(top: top, left: left, bottom: bottom, right: right))
        }
    }
}

//
// MARK: - UILayoutSupport
public extension Layout where Base: UILayoutSupport {
    var top: YAnchor {
        return cached(initial: .init(base.topAnchor, into: installer))
    }

    var bottom: YAnchor {
        return cached(initial: .init(base.bottomAnchor, into: installer))
    }

    var height: DAnchor {
        return cached(initial: .init(base.heightAnchor, into: installer))
    }
}
