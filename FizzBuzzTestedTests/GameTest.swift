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
    game.play(Move.Fizz)
    XCTAssertTrue(game.counter == 1)
  }
  
  func testIfMoveWrongScoreNotIncremented() {
    game.score = 1
    game.play(Move.Fizz)
    XCTAssertEqual(game.score, 1)
  }
  
  func testPlayShouldReturnIfMoveRight() {
    let response = game.play(Move.Number)
    XCTAssertNotNil(response.right)
  }
  
  func testPlayShouldReturnNewScore() {
    let response = game.play(Move.Number)
    XCTAssertNotNil(response.score)
  }
  
  
  // MARK: - Checks For Correct/Incorrect Answers
  func testIfFizzMoveIsRight() {
    game.counter = 2
    let response = game.play(Move.Fizz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfBuzzMoveIsRight() {
    game.counter = 4
    let response = game.play(Move.Buzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzBuzzMoveIsRight() {
    game.counter = 14
    let response = game.play(Move.FizzBuzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfNumberMoveIsRight() {
    game.counter = 3
    let response = game.play(Move.Number)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzMoveIsWrong() {
    game.counter = 3
    let response = game.play(Move.Fizz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfBuzzMoveIsWrong() {
    game.counter = 5
    let response = game.play(Move.Buzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfFizzBuzzMoveIsWrong() {
    game.counter = 15
    let response = game.play(Move.FizzBuzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfNumberMoveIsWrong() {
    game.counter = 2
    let response = game.play(Move.Number)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
}









