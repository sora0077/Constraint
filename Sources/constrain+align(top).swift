//
//  constrain+align(top).swift
//  Constraint
//
//  Created by 林達也 on 2018/04/14.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>
    ) {
    a2.top.equalTo(a1.top)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>
    ) {
    a2.top.equalTo(a1.top)
    a3.top.equalTo(a2.top)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>
    ) {
    a2.top.equalTo(a1.top)
    a3.top.equalTo(a2.top)
    a4.top.equalTo(a3.top)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>
    ) {
    a2.top.equalTo(a1.top)
    a3.top.equalTo(a2.top)
    a4.top.equalTo(a3.top)
    a5.top.equalTo(a4.top)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>
    ) {
    a2.top.equalTo(a1.top)
    a3.top.equalTo(a2.top)
    a4.top.equalTo(a3.top)
    a5.top.equalTo(a4.top)
    a6.top.equalTo(a5.top)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport,
    A7: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>
    ) {
    a2.top.equalTo(a1.top)
    a3.top.equalTo(a2.top)
    a4.top.equalTo(a3.top)
    a5.top.equalTo(a4.top)
    a6.top.equalTo(a5.top)
    a7.top.equalTo(a6.top)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport,
    A7: _UILayoutAnchorVerticalSupport,
    A8: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>,
      _ a8: Layout<A8>
    ) {
    a2.top.equalTo(a1.top)
    a3.top.equalTo(a2.top)
    a4.top.equalTo(a3.top)
    a5.top.equalTo(a4.top)
    a6.top.equalTo(a5.top)
    a7.top.equalTo(a6.top)
    a8.top.equalTo(a7.top)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport,
    A7: _UILayoutAnchorVerticalSupport,
    A8: _UILayoutAnchorVerticalSupport,
    A9: _UILayoutAnchorVerticalSupport
    >(top
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>,
      _ a8: Layout<A8>,
      _ a9: Layout<A9>
    ) {
    a2.top.equalTo(a1.top)
    a3.top.equalTo(a2.top)
    a4.top.equalTo(a3.top)
    a5.top.equalTo(a4.top)
    a6.top.equalTo(a5.top)
    a7.top.equalTo(a6.top)
    a8.top.equalTo(a7.top)
    a9.top.equalTo(a8.top)
}
