//
//  QuestionsViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 27/10/22.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var stackViewOne: UIStackView!
    @IBOutlet var radioButtons: [UIButton]!
    @IBOutlet var answerLabels: [UILabel]!
    
    @IBOutlet var stackViewTwo: UIStackView!
    @IBOutlet var answerLabelsSecond: [UILabel]!
    
    @IBOutlet var stackViewThree: UIStackView!
    @IBOutlet var answerLabelsThird: [UILabel]!
    
    @IBOutlet var stackViewFour: UIStackView!
    @IBOutlet var answerLabelsFourth: [UILabel]!
    
    @IBOutlet var stackViewFive: UIStackView!
    @IBOutlet var answerLabelsFifth: [UILabel]!
    
    private let questions = Question.getQuestions()
    private var answersChoosen: [Answer] = []
    private var questionIndex =  0
    
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
            resultVC.choosenAnswers = answersChoosen
    }
    
    @IBAction func radioButtonSelected(_ sender: UIButton) {
        radioButtons.forEach{$0.isSelected = false}
        
        for (index, radioButton) in radioButtons.enumerated() {
            if index == sender.tag {
                radioButton.isSelected = true
            }
        }
    }
    
    @IBAction func nextButtonPressed() {
        for (radio, answer) in zip(radioButtons, currentAnswers) {
            
            if radio.isSelected {
                answersChoosen.append(answer)
                nextQuestion()
                radio.isSelected = false
            }
        }
    }
    
}
// MARK: - Private Methods
extension QuestionsViewController {
    private func updateUI() {
        for stackView in [
            stackViewOne,
            stackViewTwo,
            stackViewThree,
            stackViewFour,
            stackViewFive
        ] {
            stackView?.isHidden = true
        }
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.title
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        showCurrentAnswers()
        
    }
    private func showCurrentAnswers() {
        showStackViewOne(with: currentAnswers)
        showStackViewTwo(with: currentAnswers)
        showStackViewThree(with: currentAnswers)
        showStackViewFour(with: currentAnswers)
        showStackViewFive(with: currentAnswers)
    }
    
    private func showStackViewOne(with answers: [Answer]) {
        stackViewOne.isHidden.toggle()

        for (label, answer) in zip(answerLabels, answers) {
            label.text = answer.title
        }
    }
    
    private func showStackViewTwo(with answers: [Answer]) {
        stackViewTwo.isHidden.toggle()
        
        for (label, answer) in zip(answerLabelsSecond, answers) {
            label.text = answer.title
        }
        
    }
    
    private func showStackViewThree(with answers: [Answer]) {
        stackViewThree.isHidden.toggle()
        
        for (label, answer) in zip(answerLabelsThird, answers) {
            label.text = answer.title
        }
    }
    
    private func showStackViewFour(with answers: [Answer]) {
        stackViewFour.isHidden.toggle()
        
        for (label, answer) in zip(answerLabelsFourth, answers) {
            label.text = answer.title
        }
        
    }
    
    private func showStackViewFive(with answers: [Answer]) {
        stackViewFive.isHidden.toggle()
        
        for (label, answer) in zip(answerLabelsFifth, answers) {
            label.text = answer.title
        }
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
}
