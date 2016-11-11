//
//  Game.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import Foundation

class Game: NSObject {

  let fizzbuzz = FizzBuzz()
  var score: Int
  var counter: Int
  
  override init() {
    score = 0
    counter = 0
    super.init()
  }
  
  func play(_ move: String) -> Bool {
    counter += 1
    
    let result = fizzbuzz.check(counter)
    
    if result == move {
      score += 1
      return true
    } else {
      return false
    }
  }
  
  
}
