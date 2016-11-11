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
  
  override init() {
    score = 0
    super.init()
  }
  
  func play(_ move: String) -> Bool {
    score += 1
    
    let result = fizzbuzz.check(score)
    
    if result == move {
      return true
    } else {
      return false
    }
  }
  
  
}
