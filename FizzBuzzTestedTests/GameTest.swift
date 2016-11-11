//
//  GameTest.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import XCTest
@testable import FizzBuzzTested

class GameTest: XCTestCase {
  
  let game = Game()
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testGameStartsAtZero() {
    XCTAssertTrue(game.score == 0)
  }
  
  func testOnPlayCounterIncremented() {
    game.play("Fizz")
    XCTAssertTrue(game.counter == 1)
  }
  
  func testIfMoveWrongScoreNotIncremented() {
    game.score = 1
    game.play("Fizz")
    XCTAssertEqual(game.score, 1)
  }
  
  // MARK: - Checks For Correct/Incorrect Answers
  func testIfFizzMoveIsRight() {
    game.counter = 2
    let result = game.play("Fizz")
    XCTAssertEqual(result, true)
  }
  
  func testIfBuzzMoveIsRight() {
    game.counter = 4
    let result = game.play("Buzz")
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzBuzzMoveIsRight() {
    game.counter = 14
    let result = game.play("FizzBuzz")
    XCTAssertEqual(result, true)
  }
  
  func testIfNumberMoveIsRight() {
    game.counter = 3
    let result = game.play(String(4))
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzMoveIsWrong() {
    game.counter = 3
    let result = game.play("Fizz")
    XCTAssertEqual(result, false)
  }
  
  func testIfBuzzMoveIsWrong() {
    game.counter = 5
    let result = game.play("Buzz")
    XCTAssertEqual(result, false)
  }
  
  func testIfFizzBuzzMoveIsWrong() {
    game.counter = 15
    let result = game.play("FizzBuzz")
    XCTAssertEqual(result, false)
  }
  
  func testIfNumberMoveIsWrong() {
    game.counter = 2
    let result = game.play(String(1))
    XCTAssertEqual(result, false)
  }
  
}









