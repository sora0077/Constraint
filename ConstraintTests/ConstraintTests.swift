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
        let frame = CGRect(x: 10, y: 10, width: 200, height: 200)
        let parent = UIView(frame: frame)
        let a = UIView()
        parent.addSubview(a)

        constrain(a) { a in
            #sourceLocation(file: "filename", line: 10)
            let constraints = a.edge.equalTo(a.superview.edge, inset: 5, priority: .defaultHigh)
            #sourceLocation()

            let all = [constraints.top, constraints.leading, constraints.bottom, constraints.trailing]
            all.forEach {
                XCTAssertEqual($0.priority, .defaultHigh)
                XCTAssertEqual($0.identifier, "@filename#10")
            }

            XCTAssertEqual(constraints.top.constant, 5)
            XCTAssertEqual(constraints.bottom.constant, -5)
        }

        XCTAssertEqual(a.frame, .zero)

        parent.layoutIfNeeded()
        XCTAssertEqual(parent.frame, frame)
        XCTAssertEqual(a.frame, parent.bounds.insetBy(dx: 5, dy: 5))
    }

    func test_equalToSystemSpacingSuperviewEdge() {
        let frame = CGRect(x: 10, y: 10, width: 200, height: 200)
        let parent = UIView(frame: frame)
        let a = UIView()
        parent.addSubview(a)

        constrain(a) { a in
            #sourceLocation(file: "filename", line: 10)
            let constraints = a.edge.equalToSystemSpacingInner(a.superview.edge, priority: .defaultHigh)
            #sourceLocation()

            let all = [constraints.top, constraints.leading, constraints.bottom, constraints.trailing]
            all.forEach {
                XCTAssertEqual($0.priority, .defaultHigh)
                XCTAssertEqual($0.identifier, "@filename#10")
            }

            XCTAssertEqual(constraints.top.constant, 8)
            XCTAssertEqual(constraints.bottom.constant, 8)
        }

        XCTAssertEqual(a.frame, .zero)

        parent.layoutIfNeeded()
        XCTAssertEqual(parent.frame, frame)
        XCTAssertEqual(a.frame, parent.bounds.insetBy(dx: 8, dy: 8))
    }

    func test_rightToLeft() {
        let frame = CGRect(x: 10, y: 10, width: 200, height: 200)
        let parent = UIView(frame: frame)
        parent.semanticContentAttribute = .forceRightToLeft
        let a = UIView()
        parent.addSubview(a)

        constrain(a) { a in
            a.edge.equalTo(a.superview.edge, inset: UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 20))
        }

        XCTAssertEqual(a.frame, .zero)

        parent.layoutIfNeeded()
        XCTAssertEqual(parent.frame, frame)
        XCTAssertEqual(a.frame, CGRect(x: 20, y: 0, width: 170, height: 200))
    }

    func test_stackHorizontal() {
        let frame = CGRect(x: 10, y: 10, width: 200, height: 200)
        let parent = UIView(frame: frame)
        let a = UIView()
        let b = UIView()
        parent.addSubview(a)
        parent.addSubview(b)

        constrain(a, b) { a, b in
            let superview = a.superview
            a.top.equalTo(superview.top)
            a.bottom.equalTo(superview.bottom)
            a.width.equalTo(100)

            stack(horizontal: a, 10, b)
            a.leading.equalTo(superview.leading)
            b.trailing.equalTo(superview.trailing)
        }

        XCTAssertEqual(a.frame, .zero)
        XCTAssertEqual(b.frame, .zero)

        parent.layoutIfNeeded()
        XCTAssertEqual(parent.frame, frame)
        XCTAssertEqual(a.frame.width, 100)
        XCTAssertEqual(a.frame.maxX + 10, b.frame.origin.x)
        XCTAssertEqual(b.frame.width, 90)
    }

}
