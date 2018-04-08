//
//  ConstraintGroup.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/08.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public final class ConstraintGroup {
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

    public func activate() {
        NSLayoutConstraint.activate(constraints)
    }

    public func deactivate() {
        NSLayoutConstraint.deactivate(constraints)
    }
}

private func makeDescription(_ constraint: NSLayoutConstraint, file: StaticString, line: UInt) -> String {
    return "@\((file.description as NSString).lastPathComponent)#\(line)"
}
