//
//  Questions.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 28/10/22.
//

import Foundation

struct Question {
    let title: String
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "При скрытии View всегда выгружается из памяти?",
                answers: [
                    Answer(title: "Да", check: .correct),
                    Answer(title: "Нет", check: .inCorrect),
                    Answer(title: "Не знаю", check: .inCorrect)
                ]
                
            ),
            Question(
                title: "Является ли протокол типом?",
                answers: [
                    Answer(title: "Да", check: .correct),
                    Answer(title: "Нет", check: .inCorrect),
                    Answer(title: "Зависит от обстоятельств", check: .inCorrect)
                ]
                
            ),
            Question(
                title: "Методы какого протокола являются обязательными для работы с табличными представлениями?",
                answers: [
                    Answer(title: "UITextFieldDelegate", check: .inCorrect),
                    Answer(title: "UITableViewDelegate", check: .correct),
                    Answer(title: "UITableViewDataSource", check: .inCorrect)
                ]
                
            ),
            Question(
                title: "Данный метод вызывается после перехода приложения в фазу активного состояния",
                answers: [
                    Answer(title: "sceneWillEnterForeground", check: .inCorrect),
                    Answer(title: "sceneDidBecomeActive", check: .correct),
                    Answer(title: "sceneWillResignActive", check: .inCorrect)
                ]
                
            ),
            Question(
                title: "Реальные геометрические величины становятся доступны после вызова метода",
                answers: [
                    Answer(title: "viewWillTransitionToSize", check: .inCorrect),
                    Answer(title: "viewWillLayoutSubviews", check: .inCorrect),
                    Answer(title: "viewDidLayoutSubviews", check: .correct)
                ]
                
            )
            
        ]
    }
}

struct Answer {
    let title: String
    let check: Check
}

enum Check {
    case correct
    case inCorrect
    
}
