//
//  ViewController.swift
//  Word Garden
//
//  Created by Brian Wang on 2/5/18.
//  Copyright © 2018 Ji Woo Pak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessedLetterField: UILabel!
    
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateUIAfterGuess() {
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "\(letterGuessed)"
            
        } else {
            //disable the button if I dont have a single character in the guessedLetterField
            guessLetterButton.isEnabled=false
        }
    }
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    @IBAction func guessBottonPressed(_ sender: UIButton) {
        guessedLetterField.resignFirstResponder()
        
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    


}

