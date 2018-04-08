//
//  constrain.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/06.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

@discardableResult
public func constrain<A1>(
    _ a1: A1,
    _ closure: (Layout<A1>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    closure(c1)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2>(
    _ a1: A1, _ a2: A2,
    _ closure: (Layout<A1>, Layout<A2>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    closure(c1, c2)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3>(
    _ a1: A1, _ a2: A2, _ a3: A3,
    _ closure: (Layout<A1>, Layout<A2>, Layout<A3>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    closure(c1, c2, c3)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3, A4>(
    _ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4,
    _ closure: (Layout<A1>, Layout<A2>, Layout<A3>, Layout<A4>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    let c4 = Layout(a4, group: group).root()
    closure(c1, c2, c3, c4)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3, A4, A5>(
    _ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5,
    _ closure: (Layout<A1>, Layout<A2>, Layout<A3>, Layout<A4>, Layout<A5>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    let c4 = Layout(a4, group: group).root()
    let c5 = Layout(a5, group: group).root()
    closure(c1, c2, c3, c4, c5)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3, A4, A5, A6>(
    _ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6,
    _ closure: (Layout<A1>, Layout<A2>, Layout<A3>, Layout<A4>, Layout<A5>, Layout<A6>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    let c4 = Layout(a4, group: group).root()
    let c5 = Layout(a5, group: group).root()
    let c6 = Layout(a6, group: group).root()
    closure(c1, c2, c3, c4, c5, c6)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3, A4, A5, A6, A7>(
    _ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7,
    _ closure: (Layout<A1>, Layout<A2>, Layout<A3>, Layout<A4>, Layout<A5>, Layout<A6>, Layout<A7>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    let c4 = Layout(a4, group: group).root()
    let c5 = Layout(a5, group: group).root()
    let c6 = Layout(a6, group: group).root()
    let c7 = Layout(a7, group: group).root()
    closure(c1, c2, c3, c4, c5, c6, c7)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3, A4, A5, A6, A7, A8>(
    _ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8,
    _ closure: (Layout<A1>, Layout<A2>, Layout<A3>, Layout<A4>, Layout<A5>, Layout<A6>, Layout<A7>, Layout<A8>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    let c4 = Layout(a4, group: group).root()
    let c5 = Layout(a5, group: group).root()
    let c6 = Layout(a6, group: group).root()
    let c7 = Layout(a7, group: group).root()
    let c8 = Layout(a8, group: group).root()
    closure(c1, c2, c3, c4, c5, c6, c7, c8)
    group.activate()
    return group
}

@discardableResult
public func constrain<A1, A2, A3, A4, A5, A6, A7, A8, A9>(
    _ a1: A1, _ a2: A2, _ a3: A3, _ a4: A4, _ a5: A5, _ a6: A6, _ a7: A7, _ a8: A8, _ a9: A9,
    _ closure: (Layout<A1>, Layout<A2>, Layout<A3>, Layout<A4>, Layout<A5>, Layout<A6>, Layout<A7>, Layout<A8>, Layout<A9>) -> Void
    ) -> ConstraintGroup {
    let group = ConstraintGroup()
    let c1 = Layout(a1, group: group).root()
    let c2 = Layout(a2, group: group).root()
    let c3 = Layout(a3, group: group).root()
    let c4 = Layout(a4, group: group).root()
    let c5 = Layout(a5, group: group).root()
    let c6 = Layout(a6, group: group).root()
    let c7 = Layout(a7, group: group).root()
    let c8 = Layout(a8, group: group).root()
    let c9 = Layout(a9, group: group).root()
    closure(c1, c2, c3, c4, c5, c6, c7, c8, c9)
    group.activate()
    return group
}
