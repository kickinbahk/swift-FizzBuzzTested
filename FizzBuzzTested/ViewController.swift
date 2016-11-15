//
//  ViewController.swift
//  FizzBuzzTested
//
//  Created by Josiah Mory on 11/11/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var numberButton: UIButton!
  @IBOutlet weak var fizzButton: UIButton!
  @IBOutlet weak var buzzButton: UIButton!
  @IBOutlet weak var fizzBuzzButton: UIButton!
  @IBOutlet weak var scoreLabel: UILabel!

  
  var game: Game?
  var gameScore: Int?
  var counter: Int = 0 {
    didSet {
      numberButton.setTitle(String(game!.counter), for: .normal)
    }
  }


  override func viewDidLoad() {
    super.viewDidLoad()
    scoreLabel.text = "0"
    game = Game()
  }

  func play(_ move: Move) {
    guard let newGame = game else { return }

    let response = newGame.play(move)
    gameScore = response.score
    counter = game!.counter
    scoreLabel.text = String(gameScore!)
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    if sender == numberButton {
      play(Move.Number)
    }
    if sender == fizzButton {
      play(Move.Fizz)
    }
    if sender == buzzButton {
      play(Move.Buzz)
    }
    if sender == fizzBuzzButton {
      play(Move.FizzBuzz)
    }
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

