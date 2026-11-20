//
//  Card.swift
//  Flashzilla
//
//  Created by André on 20/11/2026.
//

import Foundation

struct Card : Codable{
    var prompt: String
    var answer: String

    static let example = Card(prompt: "Quién dijo \"Ahhhh\"???!!", answer: "Jodie Whittaker")
    
    
}
