//
//  Anchor+Size.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/06.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public protocol Size {
    var _constraint_width: CGFloat { get }
    var _constraint_height: CGFloat { get }
}

extension CGSize: Size {
    public var _constraint_width: CGFloat { return width }
    public var _constraint_height: CGFloat { return height }
}

extension CGFloat: Size {
    public var _constraint_width: CGFloat { return self }
    public var _constraint_height: CGFloat { return self }
}

extension Double: Size {
    public var _constraint_width: CGFloat { return CGFloat(self) }
    public var _constraint_height: CGFloat { return CGFloat(self) }
}

extension Int: Size {
    public var _constraint_width: CGFloat { return CGFloat(self) }
    public var _constraint_height: CGFloat { return CGFloat(self) }
}

//
// MARK: -
public struct SizeAnchor {
    private let wAnchor: DAnchor
    private let hAnchor: DAnchor

    init(width: DAnchor, height: DAnchor) {
        (wAnchor, hAnchor) = (width, height)
    }
}

// MARK: equalTo
extension SizeAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: SizeAnchor,
        multiplier: Size = 1,
        constant: Size = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.equalTo(rhs.wAnchor,
                            multiplier: multiplier._constraint_width, constant: constant._constraint_width,
                            priority: priority, file, line),
            hAnchor.equalTo(rhs.hAnchor,
                            multiplier: multiplier._constraint_height, constant: constant._constraint_height,
                            priority: priority, file, line)
        )
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ rhs: SizeAnchor,
        multiplier: Size = 1,
        constant: Size = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.greaterThanOrEqualTo(rhs.wAnchor,
                                         multiplier: multiplier._constraint_width, constant: constant._constraint_width,
                                         priority: priority, file, line),
            hAnchor.greaterThanOrEqualTo(rhs.hAnchor,
                                         multiplier: multiplier._constraint_height, constant: constant._constraint_height,
                                         priority: priority, file, line)
        )
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ rhs: SizeAnchor,
        multiplier: Size = 1,
        constant: Size = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.lessThanOrEqualTo(rhs.wAnchor,
                                      multiplier: multiplier._constraint_width, constant: constant._constraint_width,
                                      priority: priority, file, line),
            hAnchor.lessThanOrEqualTo(rhs.hAnchor,
                                      multiplier: multiplier._constraint_height, constant: constant._constraint_height,
                                      priority: priority, file, line)
        )
    }
}

//
// MARK: - constant
extension SizeAnchor {
    @discardableResult
    public func equalTo(
        _ constant: Size,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.equalTo(constant._constraint_width, priority: priority, file, line),
            hAnchor.equalTo(constant._constraint_height, priority: priority, file, line)
        )
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ constant: Size,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.greaterThanOrEqualTo(constant._constraint_width, priority: priority, file, line),
            hAnchor.greaterThanOrEqualTo(constant._constraint_height, priority: priority, file, line)
        )
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ constant: Size,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.lessThanOrEqualTo(constant._constraint_width, priority: priority, file, line),
            hAnchor.lessThanOrEqualTo(constant._constraint_height, priority: priority, file, line)
        )
    }
}
