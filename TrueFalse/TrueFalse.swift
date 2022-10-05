//
//  TrueFalse.swift
//  TrueFalse
//
//  Created by Вадим Лавор on 5.10.22.
//

import Foundation

struct TrueFalse {
    
    let trueFalseList = [
        QuestionAnswer(question: "Эверест - самая высокая гора в мире", answer: "Ложь"),
        QuestionAnswer(question: "На одном из спутников Сатурна есть вода", answer: "Правда"),
        QuestionAnswer(question: "Индустриализация привела к глобальному потеплению", answer: "Правда"),
        QuestionAnswer(question: "Жизнь на Земле невозможна без фотосинтеза", answer: "Ложь"),
        QuestionAnswer(question: "Археологи - это люди, которые должны проектировать здания?", answer: "Ложь"),
        QuestionAnswer(question: "Ближайшая к Солнцу планета - Марс?", answer: "Ложь"),
        QuestionAnswer(question: "Самый большой материк - это Австралия?", answer: "Ложь"),
        QuestionAnswer(question: "Столицей Люксембурга является Люксембург", answer: "Правда"),
        QuestionAnswer(question: "Современный бетон изобрели римляне", answer: "Правда"),
        QuestionAnswer(question: "У людей меньше генов, чем у курицы", answer: "Ложь"),
        QuestionAnswer(question: "Правда ли то, что Россию и США разделяют всего 4 километра", answer: "Правда"),
        QuestionAnswer(question: "Правда ли, что лампу накаливания изобрел Никола Тесла?", answer: "Ложь")
    ]
    
    var questionNumber = 0
    var totalScore = 0
    
    func getTitle() -> String {
        return trueFalseList[questionNumber].question
    }
    
    func getProgress() -> Float {
        return (Float(questionNumber)/Float(trueFalseList.count))
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == trueFalseList[questionNumber].answer {
            totalScore += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func getScore() -> Int {
        return totalScore
    }
    
    mutating func nextQuestion() {
        if questionNumber < trueFalseList.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            totalScore = 0
        }
    }
    
}
