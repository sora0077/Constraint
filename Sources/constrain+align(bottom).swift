//
//  constrain+align(bottom).swift
//  Constraint
//
//  Created by 林達也 on 2018/04/14.
//  Copyright © 2018年 林達也. All rights reserved.
//

import Foundation

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport
    >(bottom
    a1: Layout<A1>,
      _ a2: Layout<A2>
    ) {
    a2.bottom.equalTo(a1.bottom)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport
    >(bottom
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>
    ) {
    a2.bottom.equalTo(a1.bottom)
    a3.bottom.equalTo(a2.bottom)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport
    >(bottom
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>
    ) {
    a2.bottom.equalTo(a1.bottom)
    a3.bottom.equalTo(a2.bottom)
    a4.bottom.equalTo(a3.bottom)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport
    >(bottom
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>
    ) {
    a2.bottom.equalTo(a1.bottom)
    a3.bottom.equalTo(a2.bottom)
    a4.bottom.equalTo(a3.bottom)
    a5.bottom.equalTo(a4.bottom)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport
    >(bottom
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>
    ) {
    a2.bottom.equalTo(a1.bottom)
    a3.bottom.equalTo(a2.bottom)
    a4.bottom.equalTo(a3.bottom)
    a5.bottom.equalTo(a4.bottom)
    a6.bottom.equalTo(a5.bottom)
}

public func align<
    A1: _UILayoutAnchorVerticalSupport,
    A2: _UILayoutAnchorVerticalSupport,
    A3: _UILayoutAnchorVerticalSupport,
    A4: _UILayoutAnchorVerticalSupport,
    A5: _UILayoutAnchorVerticalSupport,
    A6: _UILayoutAnchorVerticalSupport,
    A7: _UILayoutAnchorVerticalSupport
    >(bottom
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>
    ) {
    a2.bottom.equalTo(a1.bottom)
    a3.bottom.equalTo(a2.bottom)
    a4.bottom.equalTo(a3.bottom)
    a5.bottom.equalTo(a4.bottom)
    a6.bottom.equalTo(a5.bottom)
    a7.bottom.equalTo(a6.bottom)
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
    >(bottom
    a1: Layout<A1>,
      _ a2: Layout<A2>,
      _ a3: Layout<A3>,
      _ a4: Layout<A4>,
      _ a5: Layout<A5>,
      _ a6: Layout<A6>,
      _ a7: Layout<A7>,
      _ a8: Layout<A8>
    ) {
    a2.bottom.equalTo(a1.bottom)
    a3.bottom.equalTo(a2.bottom)
    a4.bottom.equalTo(a3.bottom)
    a5.bottom.equalTo(a4.bottom)
    a6.bottom.equalTo(a5.bottom)
    a7.bottom.equalTo(a6.bottom)
    a8.bottom.equalTo(a7.bottom)
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
    >(bottom
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
    a2.bottom.equalTo(a1.bottom)
    a3.bottom.equalTo(a2.bottom)
    a4.bottom.equalTo(a3.bottom)
    a5.bottom.equalTo(a4.bottom)
    a6.bottom.equalTo(a5.bottom)
    a7.bottom.equalTo(a6.bottom)
    a8.bottom.equalTo(a7.bottom)
    a9.bottom.equalTo(a8.bottom)
}
