//
//  Layout.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/05.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation
import class UIKit.UIView
import class UIKit.UIViewController
import class UIKit.UILayoutGuide
import protocol UIKit.UILayoutSupport

public final class Layout<Base> {
    public enum Direction {
        case natural
        case leftToRight
    }

    private let base: Base
    private let installer: ConstraintGroup
    private var cache: [String: Any] = [:]

    init(_ base: Base, group: ConstraintGroup) {
        self.base = base
        self.installer = group
    }

    func root() -> Layout {
        switch base {
        case let view as UIView:
            view.translatesAutoresizingMaskIntoConstraints = false

        default:
            break
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

//
// MARK: - UIViewController
public extension Layout where Base: UIViewController {
    @available(iOS, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
    var top: Layout<UILayoutSupport> {
        return cached(initial: .init(base.topLayoutGuide, group: installer))
    }

    @available(iOS, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.bottomAnchor instead of bottomLayoutGuide.topAnchor")
    var bottom: Layout<UILayoutSupport> {
        return cached(initial: .init(base.bottomLayoutGuide, group: installer))
    }

    var view: Layout<UIView> {
        return cached(initial: .init(base.view, group: installer))
    }

    var safeArea: SafeAreaLayoutGuideCompatible {
        if #available(iOS 11.0, *) {
            return cached(initial: .init(view.safeArea))
        } else {
            return cached(initial: .init(top: top.bottom, bottom: bottom.top, view: view))
        }
    }
}

//
// MARK: - UIView
public extension Layout where Base: UIView {
    @available(iOS 11.0, *)
    var safeArea: Layout<UILayoutGuide> {
        return cached(initial: .init(base.safeAreaLayoutGuide, group: installer))
    }

    var readableContentGuide: Layout<UILayoutGuide> {
        return cached(initial: .init(base.readableContentGuide, group: installer))
    }

    var layoutMarginsGuide: Layout<UILayoutGuide> {
        return cached(initial: .init(base.layoutMarginsGuide, group: installer))
    }

    var superview: Layout<UIView> {
        return cached(initial: .init(base.superview!, group: installer))
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

    var left: XAnchor {
        return cached(initial: .init(base.leftAnchor, into: installer))
    }

    var right: XAnchor {
        return cached(initial: .init(base.rightAnchor, into: installer))
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

public extension Layout where Base: UIScrollView {
    @available(iOS 11.0, *)
    var contentLayoutGuide: Layout<UILayoutGuide> {
        return cached(initial: .init(base.contentLayoutGuide, group: installer))
    }

    @available(iOS 11.0, *)
    var frameLayoutGuide: Layout<UILayoutGuide> {
        return cached(initial: .init(base.frameLayoutGuide, group: installer))
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

    var left: XAnchor {
        return cached(initial: .init(base.leftAnchor, into: installer))
    }

    var right: XAnchor {
        return cached(initial: .init(base.rightAnchor, into: installer))
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
