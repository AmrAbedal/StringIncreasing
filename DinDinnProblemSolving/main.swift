//
//  main.swift
//  DinDinnProblemSolving
//
//  Created by Amr AbdelWahab on 10/8/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import Foundation
let zValue: UInt32 = 122
let aValue: UInt32 = 96
let ZVlue: UInt32 = 90
let AValue: UInt32 = 64


func increment(text: String,by number: UInt8) -> String {
    text.reduce("", {result , character in
        if character.isASCII {
            let unicodeScalars = character.unicodeScalars
            let characterUniCodeValueAfterIncrement = unicodeScalars[unicodeScalars.startIndex].value + UInt32(number)
            let number = (characterUniCodeValueAfterIncrement) % (character.isLowercase ? zValue : ZVlue) + (character.isLowercase ? aValue : AValue)
            let newCharacter = UnicodeScalar(UInt8(number))
            return result + "\(newCharacter)" } else {
            return result + "\(character)"
        }
    })
}

let text = "a😃B😎c"
print(increment(text: text, by: 26))
//Mark: - disadvantage of using the ASCII value of the letters
// ASCII is that it only has 94 printable characters — that’s enough for the 26 letters of the basic Latin alphabet in upper and lower case, so we can't use this it with other languages or an emojies .
