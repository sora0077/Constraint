//
//  SafeAreaLayoutSupport.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/08.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public protocol SafeAreaLayoutGuideCompatible: _UILayoutAnchorHorizontalSupport, _UILayoutAnchorVerticalSupport, _UILayoutAnchorDimensionSupport {}

extension UILayoutGuide: SafeAreaLayoutGuideCompatible {}

final class SafeAreaLayoutGuideUnderOS10: SafeAreaLayoutGuideCompatible {
    var leadingAnchor: NSLayoutXAxisAnchor { return view.leadingAnchor }
    var trailingAnchor: NSLayoutXAxisAnchor { return view.trailingAnchor }
    var leftAnchor: NSLayoutXAxisAnchor { return view.leftAnchor }
    var rightAnchor: NSLayoutXAxisAnchor { return view.rightAnchor }
    var centerXAnchor: NSLayoutXAxisAnchor { return view.centerXAnchor }
    var topAnchor: NSLayoutYAxisAnchor { return top.bottomAnchor }
    var bottomAnchor: NSLayoutYAxisAnchor { return bottom.topAnchor }
    var centerYAnchor: NSLayoutYAxisAnchor { return view.centerYAnchor }
    var widthAnchor: NSLayoutDimension { return view.widthAnchor }
    var heightAnchor: NSLayoutDimension {
        if #available(iOS 10.0, *) {
            return topAnchor.anchorWithOffset(to: bottomAnchor)
        } else {
            return view.heightAnchor
        }
    }

    private let top: UILayoutSupport
    private let bottom: UILayoutSupport
    private let view: UIView

    init(top: UILayoutSupport, bottom: UILayoutSupport, view: UIView) {
        (self.top, self.bottom, self.view) = (top, bottom, view)
    }
}
