//
//  main.swift
//  seminar_2
//
//  Created by Султан Махмудов on 16.01.2024.
//
import Foundation
enum FizzBuzzPopComponent {
    case number(Int)
    case fizz
    case buzz
    case pop
}

func fizzBuzzPop(forNumber number: Int) -> [FizzBuzzPopComponent] {
    var components: [FizzBuzzPopComponent] = []

    if number.isMultiple(of: 3) {
        components.append(.fizz)
    }
    if number.isMultiple(of: 5) {
        components.append(.buzz)
    }
    if number.isMultiple(of: 7) {
        components.append(.pop)
    }
    if !number.isMultiple(of: 3) && !number.isMultiple(of: 5) && !number.isMultiple(of: 7) {
        components.append(.number(number))
    }
    return components
}

func playFizzBuzzPop(upTo limit: Int) {
    print("Enter a number:")
    
    if let userInput = readLine(), let userNumber = Int(userInput) {
        // Если пользователь ввел корректное целое число
        for i in 1...userNumber {
            let result = fizzBuzzPop(forNumber: i)

            let output = result.map { component -> String in
                switch component {
                case .number(let num):
                    return String(num)
                case .fizz:
                    return "Fizz"
                case .buzz:
                    return "Buzz"
                case .pop:
                    return "Pop"
                }
            }

            print(output.joined(separator: " "))
        }
    } else {
        print("Invalid input. Please enter a valid integer.")
    }
}

print("Enter the limit for Fizz Buzz Pop:")
if let userInput = readLine(), let userLimit = Int(userInput) {
    playFizzBuzzPop(upTo: userLimit)
} else {
    print("Invalid input. Please enter a valid integer.")
}
