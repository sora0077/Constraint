//
//  Anchor+Edge.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/06.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

extension UIEdgeInsets {
    init(_ value: UIOffset) {
        self.init(top: value.vertical, left: value.horizontal,
                  bottom: value.vertical, right: value.horizontal)
    }
    init(_ value: CGFloat) {
        self.init(top: value, left: value, bottom: value, right: value)
    }
}

prefix func - (lhs: UIOffset) -> UIOffset {
    return UIOffset(horizontal: -lhs.horizontal, vertical: -lhs.vertical)
}

//
// MARK: -
public struct EdgeAnchor {
    private let topAnchor: YAnchor
    private let bottomAnchor: YAnchor
    private let leadingAnchor: XAnchor
    private let tralingAnchor: XAnchor

    init(top: YAnchor, leading: XAnchor, bottom: YAnchor, trailing: XAnchor) {
        (topAnchor, leadingAnchor, bottomAnchor, tralingAnchor) = (top, leading, bottom, trailing)
    }

}

// MARK: equalTo
extension EdgeAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: EdgeAnchor,
        _ insets: UIEdgeInsets = .zero,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return (
            topAnchor.equalTo(rhs.topAnchor, constant: insets.top, priority: priority, file, line),
            leadingAnchor.equalTo(rhs.leadingAnchor, constant: insets.left, priority: priority, file, line),
            bottomAnchor.equalTo(rhs.bottomAnchor, constant: -insets.bottom, priority: priority, file, line),
            tralingAnchor.equalTo(rhs.tralingAnchor, constant: -insets.right, priority: priority, file, line)
        )
    }

    @discardableResult
    public func equalTo(
        _ rhs: EdgeAnchor,
        offset: UIOffset,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return equalTo(rhs, .init(-offset), priority: priority, file, line)
    }

    @discardableResult
    public func equalTo(
        _ rhs: EdgeAnchor,
        offset: CGFloat,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (top: NSLayoutConstraint, leading: NSLayoutConstraint, bottom: NSLayoutConstraint, trailing: NSLayoutConstraint) {
        return equalTo(rhs, .init(-offset), priority: priority, file, line)
    }
}
