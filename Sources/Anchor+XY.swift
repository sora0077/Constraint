//
//  Anchor+XY.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/07.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public protocol Point {
    var _constraint_x: CGFloat { get }
    var _constraint_y: CGFloat { get }
}

extension CGPoint: Point {
    public var _constraint_x: CGFloat { return x }
    public var _constraint_y: CGFloat { return y }
}

extension CGFloat: Point {
    public var _constraint_x: CGFloat { return self }
    public var _constraint_y: CGFloat { return self }
}

extension Double: Point {
    public var _constraint_x: CGFloat { return CGFloat(self) }
    public var _constraint_y: CGFloat { return CGFloat(self) }
}

extension Int: Point {
    public var _constraint_x: CGFloat { return CGFloat(self) }
    public var _constraint_y: CGFloat { return CGFloat(self) }
}

//
// MARK: -
public struct XYAnchor {
    private let xAnchor: XAnchor
    private let yAnchor: YAnchor

    init(x: XAnchor, y: YAnchor) {
        (xAnchor, yAnchor) = (x, y)
    }
}

extension XYAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: XYAnchor,
        constant: Point = CGPoint.zero,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            xAnchor.equalTo(rhs.xAnchor, constant: constant._constraint_x, priority: priority, file, line),
            yAnchor.equalTo(rhs.yAnchor, constant: constant._constraint_y, priority: priority, file, line)
        )
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ rhs: XYAnchor,
        constant: CGPoint = .zero,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            xAnchor.greaterThanOrEqualTo(rhs.xAnchor, constant: constant._constraint_x, priority: priority, file, line),
            yAnchor.greaterThanOrEqualTo(rhs.yAnchor, constant: constant._constraint_y, priority: priority, file, line)
        )
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ rhs: XYAnchor,
        constant: CGPoint = .zero,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            xAnchor.lessThanOrEqualTo(rhs.xAnchor, constant: constant._constraint_x, priority: priority, file, line),
            yAnchor.lessThanOrEqualTo(rhs.yAnchor, constant: constant._constraint_y, priority: priority, file, line)
        )
    }
}
