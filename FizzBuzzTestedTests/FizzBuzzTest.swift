//
//  FizzBuzzTest.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import XCTest
@testable import FizzBuzzTested

class FizzBuzzTest: XCTestCase {
  
  let fizzbuzz = FizzBuzz()
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testIsDivisibleByThree() {
    let result = fizzbuzz.isDivisibleByThree(3)
    XCTAssertEqual(result, true)
  }
  
  func testIsOneDivisibleByThree() {
    let result = fizzbuzz.isDivisibleByThree(1)
    XCTAssertEqual(result, false)
  }
  
  func testIsDivisibleByFive() {
    let result = fizzbuzz.isDivisibleByFive(5)
    XCTAssertEqual(result, true)
  }
  
  func testIsSevenDivisibleByFive() {
    let result = fizzbuzz.isDivisibleByFive(7)
    XCTAssertEqual(result, false)
  }
  
  func testIsDivisibleByFifteen() {
    let result = fizzbuzz.isDivisibleByFifteen(15)
    XCTAssertEqual(result, true)
  }
  
  func testIsSeventeenDivisibleByFifteen() {
    let result = fizzbuzz.isDivisibleByFifteen(17)
    XCTAssertEqual(result, false)
  }
  
  func testSayNumber() {
    let result = fizzbuzz.check(11)
    XCTAssertEqual(result, Move.Number)
  }

  func testSayFizz() {
    let result = fizzbuzz.check(3)
    XCTAssertEqual(result, Move.Fizz)
  }
  
  func testSayBuzz() {
    let result = fizzbuzz.check(5)
    XCTAssertEqual(result, Move.Buzz)
  }
  
  func testSayFizzBuzz() {
    let result = fizzbuzz.check(15)
    XCTAssertEqual(result, Move.FizzBuzz)
  }

}










