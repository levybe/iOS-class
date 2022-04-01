//
//  Words.swift
//  Apple Pie
//
//  Created by Benjamin Ethan Levy on 4/1/22.
//

import Foundation

struct Words {
    
    var allWords: [String]
    
    init() {
        if let wordsURL = Bundle.main.path(forResource: "usa", ofType: "txt")
            {
                if let startWords = try? String(contentsOfFile: wordsURL)
                {
                    allWords = startWords.components(separatedBy: "\n")
                }
                else
                {
                    allWords = ["error"]
                }
            }
        else {
            allWords = ["error"]
        }
    }
    
    func sendWord() -> String {
        if let word = allWords.randomElement() {
            return word
        }
        else {
            return "error"
        }
    }
    
    
}
