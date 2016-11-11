//
//  BrainTest.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import XCTest
@testable import FizzBuzzTested

class BrainTest: XCTestCase {
    
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testIsDivisibleByThree() {
   let brain = Brain()
    let result = brain.isDivisibleByThree(3)
    XCTAssertEqual(result, true)
  }
  
  func testIsOneDivisibleByThree() {
   let brain = Brain()
    let result = brain.isDivisibleByThree(1)
    XCTAssertEqual(result, false)
  }
  
  func testIsDivisibleByFive() {
    let brain = Brain()
    let result = brain.isDivisibleByFive(5)
    XCTAssertEqual(result, true)
  }


}










