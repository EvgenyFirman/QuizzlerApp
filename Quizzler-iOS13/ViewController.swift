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
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = ["Four + Two is equal to Six", "Five - Six is greater than one", "Three plus eight is less than Ten"]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    func updateUi(){
        titleLabel.text = quiz[questionNumber]
    }
    @IBAction func optionButton(_ sender: UIButton) {
        questionNumber += 1
        updateUi()
        
    }

}

