//
//  constrain+chain(vertical).swift
//  Constraint
//
//  Created by 林達也 on 2018/04/13.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
}

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
    a3.top.equalTo(a2.bottom, constant: c2)
}

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>,
      _ c3: CGFloat,
      _ a4: Layout<A4>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
    a3.top.equalTo(a2.bottom, constant: c2)
    a4.top.equalTo(a3.bottom, constant: c3)
}

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>,
      _ c3: CGFloat,
      _ a4: Layout<A4>,
      _ c4: CGFloat,
      _ a5: Layout<A5>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
    a3.top.equalTo(a2.bottom, constant: c2)
    a4.top.equalTo(a3.bottom, constant: c3)
    a5.top.equalTo(a4.bottom, constant: c4)
}

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>,
      _ c3: CGFloat,
      _ a4: Layout<A4>,
      _ c4: CGFloat,
      _ a5: Layout<A5>,
      _ c5: CGFloat,
      _ a6: Layout<A6>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
    a3.top.equalTo(a2.bottom, constant: c2)
    a4.top.equalTo(a3.bottom, constant: c3)
    a5.top.equalTo(a4.bottom, constant: c4)
    a6.top.equalTo(a5.bottom, constant: c5)
}

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport,
    A7: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>,
      _ c3: CGFloat,
      _ a4: Layout<A4>,
      _ c4: CGFloat,
      _ a5: Layout<A5>,
      _ c5: CGFloat,
      _ a6: Layout<A6>,
      _ c6: CGFloat,
      _ a7: Layout<A7>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
    a3.top.equalTo(a2.bottom, constant: c2)
    a4.top.equalTo(a3.bottom, constant: c3)
    a5.top.equalTo(a4.bottom, constant: c4)
    a6.top.equalTo(a5.bottom, constant: c5)
    a7.top.equalTo(a6.bottom, constant: c6)
}

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport,
    A7: _UILayoutAnchorVerticalSupport,
    A8: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>,
      _ c3: CGFloat,
      _ a4: Layout<A4>,
      _ c4: CGFloat,
      _ a5: Layout<A5>,
      _ c5: CGFloat,
      _ a6: Layout<A6>,
      _ c6: CGFloat,
      _ a7: Layout<A7>,
      _ c7: CGFloat,
      _ a8: Layout<A8>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
    a3.top.equalTo(a2.bottom, constant: c2)
    a4.top.equalTo(a3.bottom, constant: c3)
    a5.top.equalTo(a4.bottom, constant: c4)
    a6.top.equalTo(a5.bottom, constant: c5)
    a7.top.equalTo(a6.bottom, constant: c6)
    a8.top.equalTo(a7.bottom, constant: c7)
}

public func chain<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport,
    A7: _UILayoutAnchorVerticalSupport,
    A8: _UILayoutAnchorVerticalSupport,
    A9: _UILayoutAnchorVerticalSupport
    >(vertical
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>,
      _ c3: CGFloat,
      _ a4: Layout<A4>,
      _ c4: CGFloat,
      _ a5: Layout<A5>,
      _ c5: CGFloat,
      _ a6: Layout<A6>,
      _ c6: CGFloat,
      _ a7: Layout<A7>,
      _ c7: CGFloat,
      _ a8: Layout<A8>,
      _ c8: CGFloat,
      _ a9: Layout<A9>
    ) {
    a2.top.equalTo(a1.bottom, constant: c1)
    a3.top.equalTo(a2.bottom, constant: c2)
    a4.top.equalTo(a3.bottom, constant: c3)
    a5.top.equalTo(a4.bottom, constant: c4)
    a6.top.equalTo(a5.bottom, constant: c5)
    a7.top.equalTo(a6.bottom, constant: c6)
    a8.top.equalTo(a7.bottom, constant: c7)
    a9.top.equalTo(a8.bottom, constant: c8)
}
