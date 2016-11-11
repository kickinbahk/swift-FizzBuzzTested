//
//  Brain.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import Foundation

class Brain: NSObject {
  
  func check(_ number: Int) -> String {
    let fizz = "Fizz"
    let buzz = "Buzz"
    let fizzbuzz = fizz + buzz
    
    if isDivisibleByThree(number) {
      return fizz
    }
    
    return String(number)
    
  }
  
  func isDivisibleByThree(_ number: Int) -> Bool {
    return isDivisible(valueToBeDivided: number, byDivisor: 3)
  }
  
  func isDivisibleByFive(_ number: Int) -> Bool {
    return isDivisible(valueToBeDivided: number, byDivisor: 5)
  }
  
  func isDivisibleByFifteen(_ number: Int) -> Bool {
    return isDivisible(valueToBeDivided: number, byDivisor: 15)
  }
  
  func isDivisible(valueToBeDivided number: Int, byDivisor divisor: Int) -> Bool {
    if number % divisor == 0 {
      return true
    } else {
      return false
    }
  }
}
