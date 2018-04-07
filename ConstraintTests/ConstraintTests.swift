//
//  ConstraintTests.swift
//  ConstraintTests
//
//  Created by 林達也 on 2018/04/08.
//  Copyright © 2018年 林達也. All rights reserved.
//

import XCTest
import Constraint

class ConstraintTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func test_equalToSuperviewEdge() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let frame = CGRect(x: 10, y: 10, width: 200, height: 200)
        let parent = UIView(frame: frame)
        let a = UIView()
        parent.addSubview(a)

        constrain(a) { a in
            #sourceLocation(file: "filename", line: 10)
            let constraints = a.edge.equalTo(a.superview.edge, inset: 5)
            #sourceLocation()

            XCTAssertEqual(constraints.top.identifier, "@filename#10")
            XCTAssertEqual(constraints.leading.identifier, "@filename#10")
            XCTAssertEqual(constraints.bottom.identifier, "@filename#10")
            XCTAssertEqual(constraints.trailing.identifier, "@filename#10")
        }

        parent.layoutIfNeeded()
        XCTAssertEqual(parent.frame, frame)
        XCTAssertEqual(a.frame, parent.bounds.insetBy(dx: 5, dy: 5))
    }
}
