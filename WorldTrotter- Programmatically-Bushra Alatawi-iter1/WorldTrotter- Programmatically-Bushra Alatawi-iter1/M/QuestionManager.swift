//
//  QuestionManager.swift
//  WorldTrotter- Programmatically-Bushra Alatawi-iter1
//
//  Created by bushra nazal alatwi on 21/03/1443 AH.
//

import Foundation
struct QuizManager {
    
    let quiz = [
        Question(question: "Which is the world's tallest peak?", choices: ["Klimanjaro", "Everest", "Jabal Sawda", "Montblanc"], answer: "Everest"),
        Question(question: "Rigoletto opera was composed by?", choices: ["Giacomo Puccini", "Wolfgang Amadeus Mozart","Giuseppe Verdi", "Richard Wagner"], answer: "Giuseppe Verdi"),
        Question(question: "Which is the Capital of Australia?", choices: ["Canberra", "Sydney", "Melbourne", "Australia does not have a capital"], answer: "Canberra"),
        Question(question: "Turandot opera was composed by?", choices: ["Richard Wagner", "Giacomo Puccini", "Wolfgang Amadeus Mozart", "Giuseppe Verdi"], answer: "Giacomo Puccini"),
        Question(question: "The magic flute opera was composed by?", choices: ["Giacomo Puccini", "Giuseppe Verdi", "Wolfgang Amadeus Mozart", "Richard Wagner"], answer: "Wolfgang Amadeus Mozart")]
    
    private var questionNumber = 0
    var score = 0
    
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        print(userAnswer)
        print(quiz[questionNumber].answer)
        if userAnswer == quiz[questionNumber].answer{
            score += 5
            return true
        }
        score -= 5
        return false
    }
    
    
    func checkQuestion() -> String {
        return quiz[questionNumber].question
    }
    
    
    func checkChoices() -> [String] {
        return quiz[questionNumber].choices
    }
    
    
    func checkProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count);
    }
    
    
    func checkScore() -> Int {
        return score
    }
    
    
    mutating func nextQuestion() -> Bool {
        //questionNumber += 1
        if (questionNumber + 1 < quiz.count){
            questionNumber += 1
            //  questionNumber = 0
            //   score = 0
            return true
        }
        else{
            return false
        }
    }
    
    
    mutating func start() {
        questionNumber = 0
        score = 0
    }
}
