//
//  ViewController.swift
//  MyDestini
//
//  Created by Лилия Феодотова on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var bottonChoice1: UIButton!
    @IBOutlet weak var bottonChoice2: UIButton!
    var stories = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        let usersWay = stories.checkChoice(userAnswer: userChoice)
        stories.nextStory(num: usersWay)
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        storyText.text = stories.getStoryText()
        bottonChoice1.setTitle(stories.getChoice1(), for: .normal)
        bottonChoice2.setTitle(stories.getChoice2(), for: .normal)
    }
    
}

