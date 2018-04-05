//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided
print("You said:")
print(rawInput)

// Make sure the input is not mil
// (unwrap the optional)
guard let input = rawInput else {
    // If we got here, input is nil, so quit program
    exit(9) // exit with error code 9
}

// Print the verified input
print(input)

// Loop over each charavter of the input string
var happyCount = 0
var sadCount = 0
for individualCharacter in input
{
    if individualCharacter == "😀" || individualCharacter == "😄" || individualCharacter == "😊" || individualCharacter == "🙂"
    {
        happyCount += 1
    }
    else if individualCharacter == "😔" || individualCharacter == "😕" || individualCharacter == "🙁" || individualCharacter == "☹️"
    {
        sadCount += 1
    }
    
    print(individualCharacter)
}

if happyCount > sadCount
{
    print("happy.")
}
else if happyCount < sadCount
{
    print("sad.")
}
else if happyCount == 0 && sadCount == 0
{
    print("None")
}
else if happyCount == sadCount
{
    print("Equals")
}
