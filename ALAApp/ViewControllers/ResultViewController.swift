//
//  ResultViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 27/10/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var definionLabel: UILabel!
    
    var choosenAnswers: [Answer]!
    
    var countCorrectAnswer: Int {
        choosenAnswers.filter{$0.check == Check.correct}.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        navigationItem.hidesBackButton = true
        definionLabel.text = "Вы ответили верно на \(countCorrectAnswer) из \(Question.getQuestions().count) вопросов"
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        navigationController?.dismiss(animated: true)
    }
}
