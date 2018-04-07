//
//  constrain.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/06.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

@discardableResult
public func constrain<A1>(_ a1: A1, _ closure: (Layout<A1>) -> Void) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    closure(c1)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2>(_ a1: A1, _ a2: A2, _ closure: (Layout<A1>, Layout<A2>) -> Void) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    closure(c1, c2)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3>(_ a1: A1, _ a2: A2, _ a3: A3, _ closure: (Layout<A1>, Layout<A2>, Layout<A3>) -> Void) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    closure(c1, c2, c3)
    group.activate()
    return group
}
