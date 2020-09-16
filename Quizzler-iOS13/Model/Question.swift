//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Andy Foster on 9/16/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}
