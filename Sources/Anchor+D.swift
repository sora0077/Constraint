//
//  Anchor+D.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/05.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

//
// MARK: -
public struct DAnchor {
    private let anchor: NSLayoutDimension
    private let group: ConstraintGroup

    init(_ anchor: NSLayoutDimension, into group: ConstraintGroup) {
        self.anchor = anchor
        self.group = group
    }
}

extension DAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: DAnchor,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        precondition(multiplier != 0)
        return group.install(
            anchor.constraint(equalTo: rhs.anchor, multiplier: multiplier, constant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ rhs: DAnchor,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        precondition(multiplier != 0)
        return group.install(
            anchor.constraint(greaterThanOrEqualTo: rhs.anchor, multiplier: multiplier, constant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ rhs: DAnchor,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        precondition(multiplier != 0)
        return group.install(
            anchor.constraint(lessThanOrEqualTo: rhs.anchor, multiplier: multiplier, constant: constant),
            priority: priority, file, line)
    }
}

extension DAnchor {
    @discardableResult
    public func equalTo(
        _ constant: CGFloat,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return group.install(
            anchor.constraint(equalToConstant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ constant: CGFloat,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return group.install(
            anchor.constraint(greaterThanOrEqualToConstant: constant),
            priority: priority, file, line)
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ constant: CGFloat,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> NSLayoutConstraint {
        return group.install(
            anchor.constraint(lessThanOrEqualToConstant: constant),
            priority: priority, file, line)
    }
}
