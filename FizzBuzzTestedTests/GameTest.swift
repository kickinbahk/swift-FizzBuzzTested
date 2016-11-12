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
  
  func testPlayShouldReturnIfMoveRight() {
    let response = game.play("1")
    XCTAssertNotNil(response.right)
  }
  
  func testPlayShouldReturnNewScore() {
    let response = game.play("1")
    XCTAssertNotNil(response.score)
  }
  
  
  // MARK: - Checks For Correct/Incorrect Answers
  func testIfFizzMoveIsRight() {
    game.counter = 2
    let response = game.play("Fizz")
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfBuzzMoveIsRight() {
    game.counter = 4
    let response = game.play("Buzz")
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzBuzzMoveIsRight() {
    game.counter = 14
    let response = game.play("FizzBuzz")
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfNumberMoveIsRight() {
    game.counter = 3
    let response = game.play(String(4))
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzMoveIsWrong() {
    game.counter = 3
    let response = game.play("Fizz")
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfBuzzMoveIsWrong() {
    game.counter = 5
    let response = game.play("Buzz")
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfFizzBuzzMoveIsWrong() {
    game.counter = 15
    let response = game.play("FizzBuzz")
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfNumberMoveIsWrong() {
    game.counter = 2
    let response = game.play(String(1))
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
}









