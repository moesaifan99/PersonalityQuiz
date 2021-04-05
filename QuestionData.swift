//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Mohammad Saifan
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are a very nice person! You love to be around others and you give off good intentions.  You seem to love going on adventures and experiencing new things in life"
        case .cat:
            return "You are to your self ALOT.  You hate being around people but you give off good intentions.  You are smart, yet so isolated from everybody else."
        case .rabbit:
            return "You are joyful and proud to be around others.  You get upset easily and expect everything to given to you!"
        case .turtle:
            return "You expect everything to spoon fed to you.  Although it takes you a million years to complete a task or do a certain thing, your job comes out complete and very proper. "
        }
    }
    
}
