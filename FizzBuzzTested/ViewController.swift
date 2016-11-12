//
//  ViewController.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var game: Game?
  var gameScore: Int?


  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func play(_ move: String) {
    guard let newGame = game else { return }
    let newScore = newGame.play(move)
  }


}

