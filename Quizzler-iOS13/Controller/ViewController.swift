//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!

    var quizBrain = QuizBrainMulti()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer =  sender.currentTitle!
        let answerIsCorrect = quizBrain.isCorrect(userAnswer)

        quizBrain.nextQuestion()

        if answerIsCorrect {
            sender.backgroundColor = UIColor.green
            quizBrain.incrementScore()
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }

    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
       let options = quizBrain.getOptions()
        // update the questionFields
        buttonA.setTitle(options[0], for: .normal)
        buttonB.setTitle(options[1], for: .normal)
        buttonC.setTitle(options[2], for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        
        currentScoreLabel.text = "Score: \(quizBrain.getScore())"

        buttonA.backgroundColor = UIColor.clear
        buttonB.backgroundColor = UIColor.clear
        buttonC.backgroundColor = UIColor.clear
    }
    
}

