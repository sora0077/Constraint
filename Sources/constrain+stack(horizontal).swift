//
//  constrain+stack(horizontal).swift
//  Constraint
//
//  Created by 林達也 on 2018/04/13.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport
    >(horizontal
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>
    ) {
    a2.leading.equalTo(a1.trailing, constant: c1)
}

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport
    >(horizontal
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>
    ) {
    a2.leading.equalTo(a1.trailing, constant: c1)
    a3.leading.equalTo(a2.trailing, constant: c2)
}

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport
    >(horizontal
    a1: Layout<A1>,
      _ c1: CGFloat,
      _ a2: Layout<A2>,
      _ c2: CGFloat,
      _ a3: Layout<A3>,
      _ c3: CGFloat,
      _ a4: Layout<A4>
    ) {
    a2.leading.equalTo(a1.trailing, constant: c1)
    a3.leading.equalTo(a2.trailing, constant: c2)
    a4.leading.equalTo(a3.trailing, constant: c3)
}

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport
    >(horizontal
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
    a2.leading.equalTo(a1.trailing, constant: c1)
    a3.leading.equalTo(a2.trailing, constant: c2)
    a4.leading.equalTo(a3.trailing, constant: c3)
    a5.leading.equalTo(a4.trailing, constant: c4)
}

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport
    >(horizontal
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
    a2.leading.equalTo(a1.trailing, constant: c1)
    a3.leading.equalTo(a2.trailing, constant: c2)
    a4.leading.equalTo(a3.trailing, constant: c3)
    a5.leading.equalTo(a4.trailing, constant: c4)
    a6.leading.equalTo(a5.trailing, constant: c5)
}

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport,
    A7: _UILayoutAnchorHorizontalSupport
    >(horizontal
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
    a2.leading.equalTo(a1.trailing, constant: c1)
    a3.leading.equalTo(a2.trailing, constant: c2)
    a4.leading.equalTo(a3.trailing, constant: c3)
    a5.leading.equalTo(a4.trailing, constant: c4)
    a6.leading.equalTo(a5.trailing, constant: c5)
    a7.leading.equalTo(a6.trailing, constant: c6)
}

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport,
    A7: _UILayoutAnchorHorizontalSupport,
    A8: _UILayoutAnchorHorizontalSupport
    >(horizontal
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
    a2.leading.equalTo(a1.trailing, constant: c1)
    a3.leading.equalTo(a2.trailing, constant: c2)
    a4.leading.equalTo(a3.trailing, constant: c3)
    a5.leading.equalTo(a4.trailing, constant: c4)
    a6.leading.equalTo(a5.trailing, constant: c5)
    a7.leading.equalTo(a6.trailing, constant: c6)
    a8.leading.equalTo(a7.trailing, constant: c7)
}

public func stack<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport,
    A7: _UILayoutAnchorHorizontalSupport,
    A8: _UILayoutAnchorHorizontalSupport,
    A9: _UILayoutAnchorHorizontalSupport
    >(horizontal
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
    a2.leading.equalTo(a1.trailing, constant: c1)
    a3.leading.equalTo(a2.trailing, constant: c2)
    a4.leading.equalTo(a3.trailing, constant: c3)
    a5.leading.equalTo(a4.trailing, constant: c4)
    a6.leading.equalTo(a5.trailing, constant: c5)
    a7.leading.equalTo(a6.trailing, constant: c6)
    a8.leading.equalTo(a7.trailing, constant: c7)
    a9.leading.equalTo(a8.trailing, constant: c8)
}
