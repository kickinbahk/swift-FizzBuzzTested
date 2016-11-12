//
//  ViewControllerUnitTests.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import XCTest
@testable import FizzBuzzTested

class ViewControllerUnitTests: XCTestCase {
  
  var viewController: ViewController!

  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
    UIApplication.shared.keyWindow!.rootViewController = viewController
    
    let _ = viewController.view
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testHasAGame() {
    XCTAssertNotNil(viewController.game)
  }
  
  func testMove1IncrementalScore() {
    viewController.play("1")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
  
  func testMove2IncrementScore() {
    viewController.play("1")
    viewController.play("2")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 2)
  }
  
  func testFizzIncrementScore() {
    viewController.game?.counter = 2
    viewController.play("Fizz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
  
  func testBuzzIncrementScore() {
    viewController.game?.counter = 4
    viewController.play("Buzz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
  
  func testFizzBuzzIncrementScore() {
    viewController.game?.counter = 14
    viewController.play("FizzBuzz")
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
}











