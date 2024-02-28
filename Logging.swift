//
//  Logging.swift
//
//  Created by Spencer Scarlett
//  Created on 2024-Feb-23
//  Version 1.0
//  Copyright (c) 2024 Spencer Scarlett. All rights reserved.
//
//  Logging company program

// Important module
import Foundation

// Declaring constants and variables beforehand
let maxWeight: Float = 1100
let weightPLog: Float = 20
var lengthLogInput: Float = 0
var massPerLog: Float = 0
var numLogFloat: Float = 0
var numLogInt: Int = 0

// For invalid inputs (strings)
enum ErrorMessages: Error {
    case invalidUserChoice
}

do {
    // Opening message
    print("Hello and welcome to my logging company!")
    print("Enter the length of the log (1m, 0.5m, or 0.25m allowed): ")
    // This is the input line, tr's to cast, if fail = error message
    guard let lengthLogInputSTR = readLine(), let lengthLogInput = Float(lengthLogInputSTR) else {
        // throws error if an issue happens.
        throw ErrorMessages.invalidUserChoice
    }
    // checks input if it's valid.
    if lengthLogInput == 1.0 || lengthLogInput == 0.5 || lengthLogInput == 0.25 {
        // calculation for truck
        massPerLog = lengthLogInput * weightPLog
        numLogFloat = maxWeight / massPerLog
        // casts to int
        numLogInt = Int(numLogFloat)

        // output display
        print("You can only have \(numLogInt) logs")
    } else {
        // for number inputs that are not valid
        print("Input must be 1, 0.5, or 0.25 m!")
        throw ErrorMessages.invalidUserChoice
    }
    // invalid message
} catch ErrorMessages.invalidUserChoice {
    print("Error: Length must be 0.25m, 0.5m, or 1m")
}
