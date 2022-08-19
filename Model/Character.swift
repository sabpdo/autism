//
//  Character.swift
//  autismSpeechGame
//
//  Created by Sophia Yang on 2022-08-16.
//

import SwiftUI

//MARK: Character Model and Sample Data
struct Character: Identifiable,Hashable,Equatable{
    var id = UUID().uuidString
    var value: String
    var padding: CGFloat = 10
    var textSize: CGFloat = .zero
    var fontSize: CGFloat = 19
    var isShowing: Bool = false
}

var characters_: [Character] = [
    
    Character(value: "Excuse"),
    Character(value: "me"),
    Character(value: "can"),
    Character(value: "you"),
    Character(value: "please"),
    Character(value: "let"),
    Character(value: "me"),
    Character(value: "pass"),
    Character(value: "through?"),
]
