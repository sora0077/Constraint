//
//  Anchor+X.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/07.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

//
// MARK: -
public struct XAnchor {
    private let anchor: NSLayoutXAxisAnchor
    private let installer: ConstraintInstaller

    init(_ anchor: NSLayoutXAxisAnchor, into installer: ConstraintInstaller) {
        self.anchor = anchor
        self.installer = installer
    }

    public func anchorWithOffset(_ rhs: XAnchor) -> DimensionAnchor {
        return .init(anchor.anchorWithOffset(to: rhs.anchor), into: installer)
    }
}

extension XAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: XAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraint(equalTo: rhs.anchor, constant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ rhs: XAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraint(greaterThanOrEqualTo: rhs.anchor, constant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ rhs: XAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraint(lessThanOrEqualTo: rhs.anchor, constant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func equalToSystemSpacingAfter(
        _ rhs: XAnchor,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraintEqualToSystemSpacingAfter(rhs.anchor, multiplier: multiplier),
            priority: priority, file, line)
    }

    @discardableResult
    public func greaterThanOrEqualToSystemSpacingAfter(
        _ rhs: XAnchor,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraintGreaterThanOrEqualToSystemSpacingAfter(rhs.anchor, multiplier: multiplier),
            priority: priority, file, line)
    }

    @discardableResult
    public func lessThanOrEqualToSystemSpacingAfter(
        _ rhs: XAnchor,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraintLessThanOrEqualToSystemSpacingAfter(rhs.anchor, multiplier: multiplier),
            priority: priority, file, line)
    }
}
