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
  
  var game: Game?
  var gameScore: Int?
  var counter: Int = 0 {
    didSet {
      numberButton.setTitle(String(game!.counter), for: .normal)
    }
  }


  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
  }

  func play(_ move: String) {
    guard let newGame = game else { return }

    let response = newGame.play(move)
    gameScore = response.score
    counter = game!.counter
  }
  
  @IBAction func buttonTapped(_ sender: Any) {
    play(String(counter))
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

