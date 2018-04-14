//
//  constrain+align(trailing).swift
//  Constraint
//
//  Created by 林達也 on 2018/04/14.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport
    >(trailing
    a1: Layout<A1>,
      _ a2: Layout<A2>
    ) {
    a2.trailing.equalTo(a1.trailing)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport
    >(trailing
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>
    ) {
    a2.trailing.equalTo(a1.trailing)
    a3.trailing.equalTo(a2.trailing)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport
    >(trailing
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>
    ) {
    a2.trailing.equalTo(a1.trailing)
    a3.trailing.equalTo(a2.trailing)
    a4.trailing.equalTo(a3.trailing)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport
    >(trailing
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>
    ) {
    a2.trailing.equalTo(a1.trailing)
    a3.trailing.equalTo(a2.trailing)
    a4.trailing.equalTo(a3.trailing)
    a5.trailing.equalTo(a4.trailing)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport
    >(trailing
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>
    ) {
    a2.trailing.equalTo(a1.trailing)
    a3.trailing.equalTo(a2.trailing)
    a4.trailing.equalTo(a3.trailing)
    a5.trailing.equalTo(a4.trailing)
    a6.trailing.equalTo(a5.trailing)
}

public func align<
    A1: _UILayoutAnchorHorizontalSupport,
    A2: _UILayoutAnchorHorizontalSupport,
    A3: _UILayoutAnchorHorizontalSupport,
    A4: _UILayoutAnchorHorizontalSupport,
    A5: _UILayoutAnchorHorizontalSupport,
    A6: _UILayoutAnchorHorizontalSupport,
    A7: _UILayoutAnchorHorizontalSupport
    >(trailing
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>
    ) {
    a2.trailing.equalTo(a1.trailing)
    a3.trailing.equalTo(a2.trailing)
    a4.trailing.equalTo(a3.trailing)
    a5.trailing.equalTo(a4.trailing)
    a6.trailing.equalTo(a5.trailing)
    a7.trailing.equalTo(a6.trailing)
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
    >(trailing
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>,
      _ a8: Layout<A8>
    ) {
    a2.trailing.equalTo(a1.trailing)
    a3.trailing.equalTo(a2.trailing)
    a4.trailing.equalTo(a3.trailing)
    a5.trailing.equalTo(a4.trailing)
    a6.trailing.equalTo(a5.trailing)
    a7.trailing.equalTo(a6.trailing)
    a8.trailing.equalTo(a7.trailing)
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
    >(trailing
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
    a2.trailing.equalTo(a1.trailing)
    a3.trailing.equalTo(a2.trailing)
    a4.trailing.equalTo(a3.trailing)
    a5.trailing.equalTo(a4.trailing)
    a6.trailing.equalTo(a5.trailing)
    a7.trailing.equalTo(a6.trailing)
    a8.trailing.equalTo(a7.trailing)
    a9.trailing.equalTo(a8.trailing)
}
