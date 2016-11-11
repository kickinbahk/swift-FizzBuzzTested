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
  
  func testIfMoveIsRight() {
    game.score = 2
    let result = game.play("Fizz")
    XCTAssertEqual(result, true)
  }
    
}









