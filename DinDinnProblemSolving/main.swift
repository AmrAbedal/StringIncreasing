//
//  main.swift
//  DinDinnProblemSolving
//
//  Created by Amr AbdelWahab on 10/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation
let zValue: UInt8 = 122
let aValue: UInt8 = 96
let ZVlue: UInt8 = 90
let AValue: UInt8 = 64


func increaseAsscii(text: String,by number: UInt8) -> String {
    text.reduce("", {result , character in
        
        let number = (character.asciiValue! + number) % (character.isLowercase ? zValue : ZVlue) + (character.isLowercase ? aValue : AValue)
        let u = UnicodeScalar(number)
        return result + "\(u)"
    })
}

let text = "aBc"
print(increaseAsscii(text: text, by: 26))
//Mark: - disadvantage of using the ASCII value of the letters
// ASCII is that it only has 94 printable characters — that’s enough for the 26 letters of the basic Latin alphabet in upper and lower case, so we can't use this function with other languages or an emojies .
