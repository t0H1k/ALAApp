//
//  QuestionsViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 27/10/22.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    
    @IBOutlet var radioButtons: [UIButton]!
    
    @IBOutlet var answerLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func radioButtonSelected(_ sender: UIButton) {
        
        if sender.tag == 0 {
            radioButtons[0].isSelected = true
            radioButtons[1].isSelected = false
            radioButtons[2].isSelected = false
            radioButtons[3].isSelected = false
        } else if sender.tag == 1 {
            radioButtons[0].isSelected = false
            radioButtons[1].isSelected = true
            radioButtons[2].isSelected = false
            radioButtons[3].isSelected = false

        }
        else if sender.tag == 2 {
            radioButtons[0].isSelected = false
            radioButtons[1].isSelected = false
            radioButtons[2].isSelected = true
            radioButtons[3].isSelected = false
        } else if sender.tag == 3 {
            radioButtons[0].isSelected = false
            radioButtons[1].isSelected = false
            radioButtons[2].isSelected = false
            radioButtons[3].isSelected = true
        } else {
            radioButtons[0].isSelected = false
            radioButtons[1].isSelected = false
            radioButtons[2].isSelected = false
            radioButtons[3].isSelected = false
        }
    }
}

