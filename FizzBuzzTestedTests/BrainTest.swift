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
  
  let brain = Brain()
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testIsDivisibleByThree() {
    let result = brain.isDivisibleByThree(3)
    XCTAssertEqual(result, true)
  }
  
  func testIsOneDivisibleByThree() {
    let result = brain.isDivisibleByThree(1)
    XCTAssertEqual(result, false)
  }
  
  func testIsDivisibleByFive() {
    let result = brain.isDivisibleByFive(5)
    XCTAssertEqual(result, true)
  }
  
  func testIsSevenDivisibleByFive() {
    let result = brain.isDivisibleByFive(7)
    XCTAssertEqual(result, false)
  }
  
  func testIsDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(15)
    XCTAssertEqual(result, true)
  }
  
  func testIsSeventeenDivisibleByFifteen() {
    let result = brain.isDivisibleByFifteen(17)
    XCTAssertEqual(result, false)
  }
  
  func testSayNumber() {
    let result = brain.check(11)
    XCTAssertEqual(result, "11")
  }

  func testSayFizz() {
    let result = brain.check(3)
    XCTAssertEqual(result, "Fizz")
  }
  
  func testSayBuzz() {
    let result = brain.check(5)
    XCTAssertEqual(result, "Buzz")
  }  

}










