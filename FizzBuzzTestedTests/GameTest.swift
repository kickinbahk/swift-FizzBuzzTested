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
  
  func testOnPlayScoreIncremented() {
    game.play("Fizz")
    XCTAssertTrue(game.score == 1)
  }
  
  func testIfFizzMoveIsRight() {
    game.score = 2
    let result = game.play("Fizz")
    XCTAssertEqual(result, true)
  }
  
  func testIfBuzzMoveIsRight() {
    game.score = 4
    let result = game.play("Buzz")
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzBuzzMoveIsRight() {
    game.score = 14
    let result = game.play("FizzBuzz")
    XCTAssertEqual(result, true)
  }
  
  func testIfNumberMoveIsRight() {
    game.score = 3
    let result = game.play(String(4))
    XCTAssertEqual(result, true)
  }
  
  func testIfFizzMoveIsWrong() {
    game.score = 3
    let result = game.play("Fizz")
    XCTAssertEqual(result, false)
  }
  
  func testIfBuzzMoveIsWrong() {
    game.score = 5
    let result = game.play("Buzz")
    XCTAssertEqual(result, false)
  }
  
  func testIfFizzBuzzMoveIsWrong() {
    game.score = 15
    let result = game.play("FizzBuzz")
    XCTAssertEqual(result, false)
  }
  
  func testIfNumberMoveIsWrong() {
    game.score = 2
    let result = game.play(String(1))
    XCTAssertEqual(result, false)
  }
  
}








