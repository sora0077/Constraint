//
//  SafeAreaLayoutSupport.swift
//  Constraint
//
//  Created by 林達也 on 2018/04/08.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public struct SafeAreaLayoutGuideCompatible {
    private enum Inner {
        case ios10(top: YAnchor, bottom: YAnchor, view: Layout<UIView>)
        case ios11(Layout<UILayoutGuide>)
    }
    private let inner: Inner

    init(_ value: Layout<UILayoutGuide>) {
        inner = .ios11(value)
    }

    init(top: YAnchor, bottom: YAnchor, view: Layout<UIView>) {
        inner = .ios10(top: top, bottom: bottom, view: view)
    }
}

public extension SafeAreaLayoutGuideCompatible {
    var centerX: XAnchor {
        switch inner {
        case .ios11(let layout): return layout.centerX
        case .ios10(_, _, let view): return view.centerX
        }
    }

    var centerY: YAnchor {
        switch inner {
        case .ios11(let layout): return layout.centerY
        case .ios10(_, _, let view): return view.centerY
        }
    }

    var top: YAnchor {
        switch inner {
        case .ios11(let layout): return layout.top
        case .ios10(let top, _, _): return top
        }
    }

    var bottom: YAnchor {
        switch inner {
        case .ios11(let layout): return layout.bottom
        case .ios10(_, let bottom, _): return bottom
        }
    }

    var left: XAnchor {
        switch inner {
        case .ios11(let layout): return layout.left
        case .ios10(_, _, let view): return view.left
        }
    }

    var right: XAnchor {
        switch inner {
        case .ios11(let layout): return layout.right
        case .ios10(_, _, let view): return view.right
        }
    }

    var leading: XAnchor {
        switch inner {
        case .ios11(let layout): return layout.leading
        case .ios10(_, _, let view): return view.leading
        }
    }

    var trailing: XAnchor {
        switch inner {
        case .ios11(let layout): return layout.trailing
        case .ios10(_, _, let view): return view.trailing
        }
    }

    var width: DAnchor {
        switch inner {
        case .ios11(let layout): return layout.width
        case .ios10(_, _, let view): return view.width
        }
    }

    var height: DAnchor {
        switch inner {
        case .ios11(let layout): return layout.width
        case .ios10(let top, let bottom, let view):
            if #available(iOS 10.0, *) {
                return top.anchorWithOffset(bottom)
            } else {
                return view.height
            }
        }
    }

    var center: XYAnchor {
        switch inner {
        case .ios11(let layout): return layout.center
        case .ios10(_, _, let view): return view.center
        }
    }

    var size: SizeAnchor {
        switch inner {
        case .ios11(let layout): return layout.size
        case .ios10: return SizeAnchor(width: width, height: height)
        }
    }

    var edge: EdgeAnchor {
        switch inner {
        case .ios11(let layout):
            return layout.edge
        case .ios10(let top, let bottom, let view):
            return .init(top: top, left: view.leading, bottom: bottom, right: view.trailing)
        }
    }

    var strictEdge: EdgeAnchor {
        switch inner {
        case .ios11(let layout):
            return layout.strictEdge
        case .ios10(let top, let bottom, _):
            return .init(top: top, left: left, bottom: bottom, right: right)
        }
    }
}
