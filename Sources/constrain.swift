//
//  constrain.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/06.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public func constrain<A1>(_ a1: A1, _ closure: (Layout<A1>) -> Void) {
    let installer = ConstraintInstaller()
    let c1 = Layout(a1, installer: installer).root()
    closure(c1)
    installer.activate()
}

public func constrain<A1, A2>(_ a1: A1, _ a2: A2, _ closure: (Layout<A1>, Layout<A2>) -> Void) {
    let installer = ConstraintInstaller()
    let c1 = Layout(a1, installer: installer).root()
    let c2 = Layout(a2, installer: installer).root()
    closure(c1, c2)
    installer.activate()
}
