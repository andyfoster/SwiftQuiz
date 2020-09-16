//
//  QuizBrainMulti.swift
//  Quizzler-iOS13
//
//  Created by Andy Foster on 9/17/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrainMulti {
    let quiz = [
        MultichoiceQuestion(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        MultichoiceQuestion(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        MultichoiceQuestion(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        MultichoiceQuestion(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        MultichoiceQuestion(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        MultichoiceQuestion(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        MultichoiceQuestion(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        MultichoiceQuestion(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        MultichoiceQuestion(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        MultichoiceQuestion(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    

    var currentQuesNo = 0
    var currentScore = 0

    func getOptions() -> [String] {
        return quiz[currentQuesNo].options
    }
    
    func getOptionA() -> String {
        return quiz[currentQuesNo].options[0]
    }
    func getOptionB() -> String {
        return quiz[currentQuesNo].options[1]
    }
    func getOptionC() -> String {
        return quiz[currentQuesNo].options[2]
    }
    
   func isCorrect(_ userAnswer: String) -> Bool {
       if userAnswer == quiz[currentQuesNo].answer {
           return true
       } else {
           return false
       }
   }
   mutating func incrementScore() {
       currentScore += 1
   }
   
   func getScore() -> Int {
       return currentScore
   }
   
   func getQuestionText() -> String {
       return quiz[currentQuesNo].question
   }
   
   func getProgress() -> Float {
       return Float(currentQuesNo + 1) / Float(quiz.count)
   }
   
   mutating func nextQuestion() {
       if currentQuesNo + 1 < quiz.count {
           currentQuesNo += 1
       } else {
           currentQuesNo = 0
           currentScore = 0
       }
}
    
}
