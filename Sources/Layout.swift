//
//  Layout.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/05.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation
import class UIKit.UIView

public struct Layout<Base> {
    fileprivate let base: Base
    fileprivate let installer: ConstraintInstaller

    init(_ base: Base, installer: ConstraintInstaller) {
        self.base = base
        self.installer = installer
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
// MARK: - UIView
public extension Layout where Base: UIView {
    var superview: Layout<UIView> {
        return .init(base.superview!, installer: installer)
    }

    var firstBaseline: YAnchor {
        return .init(base.firstBaselineAnchor, into: installer)
    }

    var lastBaseline: YAnchor {
        return .init(base.lastBaselineAnchor, into: installer)
    }

    var centerX: XAnchor {
        return .init(base.centerXAnchor, into: installer)
    }

    var centerY: YAnchor {
        return .init(base.centerYAnchor, into: installer)
    }

    var top: YAnchor {
        return .init(base.topAnchor, into: installer)
    }

    var bottom: YAnchor {
        return .init(base.bottomAnchor, into: installer)
    }

    var right: XAnchor {
        return .init(base.rightAnchor, into: installer)
    }

    var left: XAnchor {
        return .init(base.leftAnchor, into: installer)
    }

    var leading: XAnchor {
        return .init(base.leadingAnchor, into: installer)
    }

    var trailing: XAnchor {
        return .init(base.trailingAnchor, into: installer)
    }

    var width: DimensionAnchor {
        return .init(base.widthAnchor, into: installer)
    }

    var height: DimensionAnchor {
        return .init(base.heightAnchor, into: installer)
    }

    var center: XYAnchor {
        return .init(x: centerX, y: centerY)
    }

    var size: SizeAnchor {
        return .init(width: width, height: height)
    }

    var edge: EdgeAnchor {
        return .init(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
}

//
// MARK: - UILayoutGuide
extension Layout where Base: UILayoutGuide {
    var centerX: XAnchor {
        return .init(base.centerXAnchor, into: installer)
    }

    var centerY: YAnchor {
        return .init(base.centerYAnchor, into: installer)
    }

    var top: YAnchor {
        return .init(base.topAnchor, into: installer)
    }

    var bottom: YAnchor {
        return .init(base.bottomAnchor, into: installer)
    }

    var right: XAnchor {
        return .init(base.rightAnchor, into: installer)
    }

    var left: XAnchor {
        return .init(base.leftAnchor, into: installer)
    }

    var leading: XAnchor {
        return .init(base.leadingAnchor, into: installer)
    }

    var trailing: XAnchor {
        return .init(base.trailingAnchor, into: installer)
    }

    var width: DimensionAnchor {
        return .init(base.widthAnchor, into: installer)
    }

    var height: DimensionAnchor {
        return .init(base.heightAnchor, into: installer)
    }

    var center: XYAnchor {
        return .init(x: centerX, y: centerY)
    }

    var size: SizeAnchor {
        return .init(width: width, height: height)
    }

    var edge: EdgeAnchor {
        return .init(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
}
