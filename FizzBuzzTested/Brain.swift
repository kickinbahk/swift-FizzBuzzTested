//
//  Brain.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import Foundation

class Brain: NSObject {
  func isDivisibleByThree(_ number: Int) -> Bool {
    if number % 3 == 0 {
      return true
    } else {
      return false
    }
  }
}
