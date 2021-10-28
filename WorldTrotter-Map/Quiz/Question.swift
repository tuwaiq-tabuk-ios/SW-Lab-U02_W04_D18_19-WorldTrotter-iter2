//
//  Question.swift
//  Trivial_Single_Choice
//
//  Created by Mohammed on 12/03/1443 AH.
//
import Foundation





struct Question {
    
    let question:String
    let optionA:String
    let optionB:String
    let theCorrectAnswer:Int
    

    init (questionText:String, choiceA:String , choiceB:String, answer:Int) {
        
      question = questionText
        optionA = choiceA
        optionB = choiceB
        theCorrectAnswer = answer
    }
}
