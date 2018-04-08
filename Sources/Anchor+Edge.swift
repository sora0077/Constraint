//
//  Anchor+Edge.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/06.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public protocol EdgeInsets {
    var _constraint_top: CGFloat { get }
    var _constraint_left: CGFloat { get }
    var _constraint_bottom: CGFloat { get }
    var _constraint_right: CGFloat { get }
}

extension UIEdgeInsets: EdgeInsets {
    public var _constraint_top: CGFloat { return top }
    public var _constraint_left: CGFloat { return left }
    public var _constraint_bottom: CGFloat { return bottom }
    public var _constraint_right: CGFloat { return right }
}

extension UIOffset: EdgeInsets {
    public var _constraint_top: CGFloat { return vertical }
    public var _constraint_left: CGFloat { return horizontal }
    public var _constraint_bottom: CGFloat { return vertical }
    public var _constraint_right: CGFloat { return horizontal }
}

extension CGFloat: EdgeInsets {
    public var _constraint_top: CGFloat { return self }
    public var _constraint_left: CGFloat { return self }
    public var _constraint_bottom: CGFloat { return self }
    public var _constraint_right: CGFloat { return self }
}

extension Double: EdgeInsets {
    public var _constraint_top: CGFloat { return CGFloat(self) }
    public var _constraint_left: CGFloat { return CGFloat(self) }
    public var _constraint_bottom: CGFloat { return CGFloat(self) }
    public var _constraint_right: CGFloat { return CGFloat(self) }
}

extension Int: EdgeInsets {
    public var _constraint_top: CGFloat { return CGFloat(self) }
    public var _constraint_left: CGFloat { return CGFloat(self) }
    public var _constraint_bottom: CGFloat { return CGFloat(self) }
    public var _constraint_right: CGFloat { return CGFloat(self) }
}

//
// MARK: -
public struct EdgeAnchor {
    private let topAnchor: YAnchor
    private let bottomAnchor: YAnchor
    private let leftAnchor: XAnchor
    private let rightAnchor: XAnchor

    init(top: YAnchor, left: XAnchor, bottom: YAnchor, right: XAnchor) {
        (topAnchor, leftAnchor, bottomAnchor, rightAnchor) = (top, left, bottom, right)
    }
}

// MARK: equalTo
extension EdgeAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: EdgeAnchor,
        inset: EdgeInsets = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return (
            topAnchor.equalTo(rhs.topAnchor, constant: inset._constraint_top, priority: priority, file, line),
            leftAnchor.equalTo(rhs.leftAnchor, constant: inset._constraint_left, priority: priority, file, line),
            bottomAnchor.equalTo(rhs.bottomAnchor, constant: -inset._constraint_bottom, priority: priority, file, line),
            rightAnchor.equalTo(rhs.rightAnchor, constant: -inset._constraint_right, priority: priority, file, line)
        )
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ rhs: EdgeAnchor,
        inset: EdgeInsets = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return (
            topAnchor.lessThanOrEqualTo(rhs.topAnchor, constant: inset._constraint_top, priority: priority, file, line),
            leftAnchor.lessThanOrEqualTo(rhs.leftAnchor, constant: inset._constraint_left, priority: priority, file, line),
            bottomAnchor.greaterThanOrEqualTo(rhs.bottomAnchor, constant: -inset._constraint_bottom, priority: priority, file, line),
            rightAnchor.greaterThanOrEqualTo(rhs.rightAnchor, constant: -inset._constraint_right, priority: priority, file, line)
        )
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ rhs: EdgeAnchor,
        inset: EdgeInsets = 0,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return (
            topAnchor.greaterThanOrEqualTo(rhs.topAnchor, constant: inset._constraint_top, priority: priority, file, line),
            leftAnchor.greaterThanOrEqualTo(rhs.leftAnchor, constant: inset._constraint_left, priority: priority, file, line),
            bottomAnchor.lessThanOrEqualTo(rhs.bottomAnchor, constant: -inset._constraint_bottom, priority: priority, file, line),
            rightAnchor.lessThanOrEqualTo(rhs.rightAnchor, constant: -inset._constraint_right, priority: priority, file, line)
        )
    }
}

extension EdgeAnchor {
    @available(iOS 11.0, *)
    @discardableResult
    public func equalToSystemSpacingInner(
        _ rhs: EdgeAnchor,
        multiplier: EdgeInsets = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return (
            topAnchor.equalToSystemSpacingBelow(rhs.topAnchor, multiplier: multiplier._constraint_top, priority: priority, file, line),
            leftAnchor.equalToSystemSpacingAfter(rhs.leftAnchor, multiplier: multiplier._constraint_left, priority: priority, file, line),
            rhs.bottomAnchor.equalToSystemSpacingBelow(bottomAnchor, multiplier: multiplier._constraint_bottom, priority: priority, file, line),
            rhs.rightAnchor.equalToSystemSpacingAfter(rightAnchor, multiplier: multiplier._constraint_right, priority: priority, file, line)
        )
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func greaterThanOrEqualToSystemSpacingInner(
        _ rhs: EdgeAnchor,
        multiplier: EdgeInsets = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return (
            topAnchor.lessThanOrEqualToSystemSpacingBelow(rhs.topAnchor, multiplier: multiplier._constraint_top, priority: priority, file, line),
            leftAnchor.lessThanOrEqualToSystemSpacingAfter(rhs.leftAnchor, multiplier: multiplier._constraint_left, priority: priority, file, line),
            rhs.bottomAnchor.lessThanOrEqualToSystemSpacingBelow(bottomAnchor, multiplier: multiplier._constraint_bottom, priority: priority, file, line),
            rhs.rightAnchor.lessThanOrEqualToSystemSpacingAfter(rightAnchor, multiplier: multiplier._constraint_right, priority: priority, file, line)
        )
    }

    @available(iOS 11.0, *)
    @discardableResult
    public func lessThanOrEqualToSystemSpacingInner(
        _ rhs: EdgeAnchor,
        multiplier: EdgeInsets = 1,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
        ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return (
            topAnchor.greaterThanOrEqualToSystemSpacingBelow(rhs.topAnchor, multiplier: multiplier._constraint_top, priority: priority, file, line),
            leftAnchor.greaterThanOrEqualToSystemSpacingAfter(rhs.leftAnchor, multiplier: multiplier._constraint_left, priority: priority, file, line),
            rhs.bottomAnchor.greaterThanOrEqualToSystemSpacingBelow(bottomAnchor, multiplier: multiplier._constraint_bottom, priority: priority, file, line),
            rhs.rightAnchor.greaterThanOrEqualToSystemSpacingAfter(rightAnchor, multiplier: multiplier._constraint_right, priority: priority, file, line)
        )
    }
}
