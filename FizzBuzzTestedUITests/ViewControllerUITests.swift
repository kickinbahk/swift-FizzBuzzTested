//
//  ViewControllerUITests.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/14/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testTapNumberButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    
    numberButton.tap()
    let newScore = app.staticTexts.element(matching: .any, identifier: "scoreLabel").label
    XCTAssertEqual(newScore, "1")
  }
  
  func testTapNumberButtonTwiceIncrementsScoreByTwo() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    
    numberButton.tap()
    numberButton.tap()
    let newScore = app.staticTexts.element(matching: .any, identifier: "scoreLabel").label
    XCTAssertEqual(newScore, "2")
  }

  func testTapFizzButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    let newScore = app.staticTexts.element(matching: .any, identifier: "scoreLabel").label
    XCTAssertEqual(newScore, "3")
  }
  
  func testTapBuzzButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    let buzzButton = app.buttons["buzzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    let newScore = app.staticTexts.element(matching: .any, identifier: "scoreLabel").label
    XCTAssertEqual(newScore, "5")
  }
  
  func testTapFizzBuzzButtonIncrementScore() {
    let app = XCUIApplication()
    let fizzBuzzButton = app.buttons["fizzBuzzButton"]
    
    playTo14()
    
    fizzBuzzButton.tap()
    let newScore = app.staticTexts.element(matching: .any, identifier: "scoreLabel").label
    XCTAssertEqual(newScore, "15")
  }
  
  func testScoreIsNotIncrementedOnIncorrectAnswer() {
    let app = XCUIApplication()
    let fizzBuzzButton = app.buttons["fizzBuzzButton"]
    let scoreLabel = app.staticTexts.element(matching: .any, identifier: "scoreLabel").label
    
    fizzBuzzButton.tap()
    XCTAssertEqual(scoreLabel, "0")
  }
  
  func playTo14() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    let buzzButton = app.buttons["buzzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    buzzButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
  }
}










