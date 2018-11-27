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

public protocol _UILayoutAnchorHorizontalSupport {
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }

    var leftAnchor: NSLayoutXAxisAnchor { get }
    var rightAnchor: NSLayoutXAxisAnchor { get }

    var centerXAnchor: NSLayoutXAxisAnchor { get }
}

public protocol _UILayoutAnchorVerticalSupport {
    var topAnchor: NSLayoutYAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }

    var centerYAnchor: NSLayoutYAxisAnchor { get }
}

public protocol _UILayoutAnchorDimensionSupport {
    var widthAnchor: NSLayoutDimension { get }
    var heightAnchor: NSLayoutDimension { get }
}

extension UIView: _UILayoutAnchorHorizontalSupport, _UILayoutAnchorVerticalSupport, _UILayoutAnchorDimensionSupport {}
extension UILayoutGuide: _UILayoutAnchorHorizontalSupport, _UILayoutAnchorVerticalSupport, _UILayoutAnchorDimensionSupport {}

public extension Layout where Base: _UILayoutAnchorHorizontalSupport {
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

    var centerX: XAnchor {
        return cached(initial: .init(base.centerXAnchor, into: installer))
    }
}

public extension Layout where Base: _UILayoutAnchorVerticalSupport {
    var top: YAnchor {
        return cached(initial: .init(base.topAnchor, into: installer))
    }

    var bottom: YAnchor {
        return cached(initial: .init(base.bottomAnchor, into: installer))
    }

    var centerY: YAnchor {
        return cached(initial: .init(base.centerYAnchor, into: installer))
    }
}

public extension Layout where Base: _UILayoutAnchorDimensionSupport {
    var width: DAnchor {
        return cached(initial: .init(base.widthAnchor, into: installer))
    }

    var height: DAnchor {
        return cached(initial: .init(base.heightAnchor, into: installer))
    }

    var size: SizeAnchor {
        return cached(initial: .init(width: width, height: height))
    }
}

public extension Layout where Base: _UILayoutAnchorHorizontalSupport & _UILayoutAnchorVerticalSupport {
    var center: XYAnchor {
        return cached(initial: .init(x: centerX, y: centerY))
    }

    var edge: EdgeAnchor {
        return cached(initial: .init(top: top, left: leading, bottom: bottom, right: trailing))
    }

    var strictEdge: EdgeAnchor {
        return cached(initial: .init(top: top, left: left, bottom: bottom, right: right))
    }
}

public extension Layout where Base == SafeAreaLayoutGuideCompatible {
    // MARK: horizontal
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

    var centerX: XAnchor {
        return cached(initial: .init(base.centerXAnchor, into: installer))
    }

    // MARK: vertical
    var top: YAnchor {
        return cached(initial: .init(base.topAnchor, into: installer))
    }

    var bottom: YAnchor {
        return cached(initial: .init(base.bottomAnchor, into: installer))
    }

    var centerY: YAnchor {
        return cached(initial: .init(base.centerYAnchor, into: installer))
    }

    // MARK: dimension
    var width: DAnchor {
        return cached(initial: .init(base.widthAnchor, into: installer))
    }

    var height: DAnchor {
        return cached(initial: .init(base.heightAnchor, into: installer))
    }

    var size: SizeAnchor {
        return cached(initial: .init(width: width, height: height))
    }

    // MARK: horizontal & vertical
    var center: XYAnchor {
        return cached(initial: .init(x: centerX, y: centerY))
    }

    var edge: EdgeAnchor {
        return cached(initial: .init(top: top, left: leading, bottom: bottom, right: trailing))
    }

    var strictEdge: EdgeAnchor {
        return cached(initial: .init(top: top, left: left, bottom: bottom, right: right))
    }
}

//
// MARK: - UIViewController
public extension Layout where Base: UIViewController {
    @available(iOS, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
    var topLayoutGuide: Layout<UILayoutSupport> {
        return cached(initial: .init(base.topLayoutGuide, group: installer))
    }

    @available(iOS, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.bottomAnchor instead of bottomLayoutGuide.topAnchor")
    var bottomLayoutGuide: Layout<UILayoutSupport> {
        return cached(initial: .init(base.bottomLayoutGuide, group: installer))
    }

    var view: Layout<UIView> {
        return cached(initial: .init(base.view, group: installer))
    }

    @available(iOS, deprecated: 11.0, message: "Use view.safeArea directly")
    var safeArea: Layout<SafeAreaLayoutGuideCompatible> {
        if #available(iOS 11.0, *) {
            return cached(initial: .init(base.view.safeAreaLayoutGuide, group: installer))
        } else {
            var guide: SafeAreaLayoutGuideUnderOS10 {
                return .init(top: base.topLayoutGuide, bottom: base.bottomLayoutGuide, view: base.view)
            }
            return cached(initial: .init(guide, group: installer))
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

    @discardableResult
    func width(hugging: UILayoutPriority? = nil, compressionResistance: UILayoutPriority? = nil) -> DAnchor {
        if let hugging = hugging {
            base.setContentHuggingPriority(hugging, for: .horizontal)
        }
        if let compressionResistance = compressionResistance {
            base.setContentCompressionResistancePriority(compressionResistance, for: .horizontal)
        }
        return width
    }

    @discardableResult
    func height(hugging: UILayoutPriority? = nil, compressionResistance: UILayoutPriority? = nil) -> DAnchor {
        if let hugging = hugging {
            base.setContentHuggingPriority(hugging, for: .vertical)
        }
        if let compressionResistance = compressionResistance {
            base.setContentCompressionResistancePriority(compressionResistance, for: .vertical)
        }
        return height
    }

    func contentHuggingPriority(for axis: NSLayoutConstraint.Axis) -> UILayoutPriority {
        return base.contentHuggingPriority(for: axis)
    }

    func contentCompressionResistancePriority(for axis: NSLayoutConstraint.Axis) -> UILayoutPriority {
        return base.contentCompressionResistancePriority(for: axis)
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
