//
//  SafeAreaLayoutSupport.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/08.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public protocol SafeAreaLayoutGuideCompatible {
    var centerX: XAnchor { get }
    var centerY: YAnchor { get }
    var top: YAnchor { get }
    var bottom: YAnchor { get }
    var left: XAnchor { get }
    var right: XAnchor { get }
    var leading: XAnchor { get }
    var trailing: XAnchor { get }
    var width: DAnchor { get }
    var height: DAnchor { get }
    var center: XYAnchor { get }
    var size: SizeAnchor { get }
    var edge: EdgeAnchor { get }
    var strictEdge: EdgeAnchor { get }
}

extension Layout: SafeAreaLayoutGuideCompatible where Base == UILayoutGuide {}

struct SafeAreaLayoutGuideUnderOS10: SafeAreaLayoutGuideCompatible {
    let top: YAnchor
    let bottom: YAnchor
    let view: Layout<UIView>

    init(top: YAnchor, bottom: YAnchor, view: Layout<UIView>) {
        (self.top, self.bottom, self.view) = (top, bottom, view)
    }
}

extension SafeAreaLayoutGuideUnderOS10 {
    var centerX: XAnchor { return view.centerX }
    var centerY: YAnchor { return view.centerY }
    var left: XAnchor { return view.left }
    var right: XAnchor { return view.right }
    var leading: XAnchor { return view.leading }
    var trailing: XAnchor { return view.trailing }
    var width: DAnchor { return view.width }
    var height: DAnchor {
        if #available(iOS 10.0, *) {
            return top.anchorWithOffset(bottom)
        } else {
            return view.height
        }
    }
    var center: XYAnchor { return view.center }
    var size: SizeAnchor { return SizeAnchor(width: width, height: height) }
    var edge: EdgeAnchor { return .init(top: top, left: view.leading, bottom: bottom, right: view.trailing) }
    var strictEdge: EdgeAnchor { return .init(top: top, left: left, bottom: bottom, right: right) }
}
