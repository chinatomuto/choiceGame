//
//  Story.swift
//  choiceGame
//
//  Created by nato on 07/03/2022.
//

import Foundation

struct Story {
    var title: String
    var choice1: String
    var choice2: String
    
    init(title: String, choice1: String, choice2: String) {
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
