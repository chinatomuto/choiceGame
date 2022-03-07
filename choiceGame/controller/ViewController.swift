//
//  ViewController.swift
//  choiceGame
//
//  Created by nato on 27/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ChoiceLabel: UILabel!
    @IBOutlet weak var button1Choice: UIButton!
    @IBOutlet weak var button2Choice: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func choiceAction(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        
        let userGotItRight = storyBrain.checkAnswer(userChoice)
        
        updateUI()
        print(userGotItRight)
        
        storyBrain.nextScene()
        
    }
    
    func updateUI() {
        ChoiceLabel.text = storyBrain.getSceneText()
        button1Choice.setTitle(storyBrain.getChoice1Text(), for: .normal)
        button2Choice.setTitle(storyBrain.getChoice2Text(), for: .normal)
    }
    
}

