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

func increase(text: String,by number: UInt8) -> String {
    text.reduce("", {result , character in
        let number = ((character.asciiValue! + number) % zValue) + aValue
        let u = UnicodeScalar(number)
        return result + "\(u)"
    })
}

let text = "abc"
print(increase(text: text, by: 26))
