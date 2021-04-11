//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var buttonTrue: UIButton!
    @IBOutlet weak var buttonFalse: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
   
    var quizBrain = QuizBrain()
    
    var answerNumber = 1
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0
        updateUi()
    }
  
    
    @objc func updateUi(){
        scoreLabel.text = ("Score: \(String(quizBrain.getScore()))") 
        titleLabel.text = quizBrain.getTitle()
        buttonTrue.backgroundColor = UIColor.clear
        buttonFalse.backgroundColor = UIColor.clear
    }
    
    @IBAction func optionButton(_ sender: UIButton) {
        
        let actualAnswer = sender.titleLabel!.text!
        
        let userGotItRight =  quizBrain.checkAnswer(actualAnswer)
        
        if userGotItRight {
        print ("Right")
            buttonTrue.backgroundColor = UIColor.green
        } else {
            print("Wrong")
            buttonFalse.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
        progressBar.progress = quizBrain.getProgress()
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
    }

}

