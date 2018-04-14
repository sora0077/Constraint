//
//  constrain+align(leading).swift
//  Constraint
//
//  Created by 林達也 on 2018/04/14.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport
    >(leading
    a1: Layout<A1>,
      _ a2: Layout<A2>
    ) {
    a2.leading.equalTo(a1.leading)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport
    >(leading
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>
    ) {
    a2.leading.equalTo(a1.leading)
    a3.leading.equalTo(a2.leading)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport
    >(leading
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>
    ) {
    a2.leading.equalTo(a1.leading)
    a3.leading.equalTo(a2.leading)
    a4.leading.equalTo(a3.leading)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport
    >(leading
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>
    ) {
    a2.leading.equalTo(a1.leading)
    a3.leading.equalTo(a2.leading)
    a4.leading.equalTo(a3.leading)
    a5.leading.equalTo(a4.leading)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport
    >(leading
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>
    ) {
    a2.leading.equalTo(a1.leading)
    a3.leading.equalTo(a2.leading)
    a4.leading.equalTo(a3.leading)
    a5.leading.equalTo(a4.leading)
    a6.leading.equalTo(a5.leading)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport,
    A7: _UILayoutAnchorHorizontalSupport
    >(leading
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>
    ) {
    a2.leading.equalTo(a1.leading)
    a3.leading.equalTo(a2.leading)
    a4.leading.equalTo(a3.leading)
    a5.leading.equalTo(a4.leading)
    a6.leading.equalTo(a5.leading)
    a7.leading.equalTo(a6.leading)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport,
    A7: _UILayoutAnchorHorizontalSupport,
    A8: _UILayoutAnchorHorizontalSupport
    >(leading
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>,
      _ a8: Layout<A8>
    ) {
    a2.leading.equalTo(a1.leading)
    a3.leading.equalTo(a2.leading)
    a4.leading.equalTo(a3.leading)
    a5.leading.equalTo(a4.leading)
    a6.leading.equalTo(a5.leading)
    a7.leading.equalTo(a6.leading)
    a8.leading.equalTo(a7.leading)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport,
    A7: _UILayoutAnchorHorizontalSupport,
    A8: _UILayoutAnchorHorizontalSupport,
    A9: _UILayoutAnchorHorizontalSupport
    >(leading
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
    a2.leading.equalTo(a1.leading)
    a3.leading.equalTo(a2.leading)
    a4.leading.equalTo(a3.leading)
    a5.leading.equalTo(a4.leading)
    a6.leading.equalTo(a5.leading)
    a7.leading.equalTo(a6.leading)
    a8.leading.equalTo(a7.leading)
    a9.leading.equalTo(a8.leading)
}
