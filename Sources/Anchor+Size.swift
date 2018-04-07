//
//  Anchor+Size.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/06.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

extension CGSize {
    init(_ value: CGFloat) {
        self.init(width: value, height: value)
    }
}

//
// MARK: -
public struct SizeAnchor {
    private let wAnchor: DimensionAnchor
    private let hAnchor: DimensionAnchor

    init(width: DimensionAnchor, height: DimensionAnchor) {
        (wAnchor, hAnchor) = (width, height)
    }

}

// MARK: equalTo
extension SizeAnchor {
    @discardableResult
    public func equalTo(
        _ rhs: SizeAnchor,
        multiplier: CGSize = .init(width: 1, height: 1),
        constant: CGSize = .zero,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.equalTo(rhs.wAnchor, multiplier: multiplier.width, constant: constant.width,
                            priority: priority, file, line),
            hAnchor.equalTo(rhs.hAnchor, multiplier: multiplier.height, constant: constant.height,
                            priority: priority, file, line)
        )
    }

    @discardableResult
    public func equalTo(
        _ rhs: SizeAnchor,
        multiplier: CGFloat = 1,
        constant: CGFloat,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return equalTo(rhs, multiplier: CGSize(multiplier), constant: CGSize(constant), priority: priority, file, line)
    }

    // MARK: 
    @discardableResult
    public func equalTo(
        _ constant: CGSize,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (
            wAnchor.equalTo(constant.width, priority: priority, file, line),
            hAnchor.equalTo(constant.height, priority: priority, file, line)
        )
    }

    @discardableResult
    public func equalTo(
        _ constant: CGFloat,
        priority: UILayoutPriority = .required,
        _ file: StaticString = #file, _ line: UInt = #line
    ) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return equalTo(.init(width: constant, height: constant), priority: priority, file, line)
    }
}
