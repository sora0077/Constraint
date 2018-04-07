//
//  Anchor+Center.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/07.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

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
        constant: CGPoint = .zero,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return (
            xAnchor.equalTo(rhs.xAnchor, constant: constant.x, priority: priority, file, line),
            yAnchor.equalTo(rhs.yAnchor, constant: constant.y, priority: priority, file, line)
        )
    }

    @discardableResult
    public func equalTo(
        _ rhs: XYAnchor,
        constant: CGFloat,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (x: NSLayoutConstraint, y: NSLayoutConstraint) {
        return equalTo(rhs, constant: constant, priority: priority, file, line)
    }
}
