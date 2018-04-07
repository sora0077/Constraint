//
//  Anchor+Y.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/07.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

//
// MARK: -
public struct YAnchor {
    private let anchor: NSLayoutYAxisAnchor
    private let installer: ConstraintInstaller

    init(_ anchor: NSLayoutYAxisAnchor, into installer: ConstraintInstaller) {
        self.anchor = anchor
        self.installer = installer
    }

    public func anchorWithOffset(_ rhs: YAnchor) -> DAnchor {
        return .init(anchor.anchorWithOffset(to: rhs.anchor), into: installer)
    }
}

extension YAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: YAnchor,
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
        _ rhs: YAnchor,
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
        _ rhs: YAnchor,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraint(lessThanOrEqualTo: rhs.anchor, constant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func equalToSystemSpacingBelow(
        _ rhs: YAnchor,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraintEqualToSystemSpacingBelow(rhs.anchor, multiplier: multiplier),
            priority: priority, file, line)
    }

    @discardableResult
    public func greaterThanOrEqualToSystemSpacingBelow(
        _ rhs: YAnchor,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraintGreaterThanOrEqualToSystemSpacingBelow(rhs.anchor, multiplier: multiplier),
            priority: priority, file, line)
    }

    @discardableResult
    public func lessThanOrEqualToSystemSpacingBelow(
        _ rhs: YAnchor,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return installer.install(
            anchor.constraintLessThanOrEqualToSystemSpacingBelow(rhs.anchor, multiplier: multiplier),
            priority: priority, file, line)
    }
}