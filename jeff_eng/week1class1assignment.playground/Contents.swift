//Week 1 Class 1 Assignment

import UIKit

//Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number
func numConversionChecker(string: String) -> Int? {
    return Int(string)
}

numConversionChecker("10")
numConversionChecker("Sonics")






//Write a function that takes in a tuple (code, message) and returns a string by using interpolation
func codeBreaker(input: (code: String, message: String)) -> String {
    return "Your code \(input.code) means \(input.message)"
}

let tuple: (code: String, message: String) = (code: "!@#$%^#", message: "Hello!")

codeBreaker(tuple)





//Write a function that take in a string, and returns a message: “String contains n characters”
func stringCharacterCount(string: String) -> String {
    let numOfCharacters = string.characters.count
    return "String contains \(numOfCharacters) characters"
}

stringCharacterCount("Hello")






//Write a function that takes in a string and reverses it. Use a simple for loop
func stringReverser(stringInput: String) -> String {
    var reversedString: String = String() //Initialize an empty string
    
    //loop through the string
    for characterIndex in stringInput.characters.count.predecessor().stride(through: 0, by: -1) {
        let char = Array(stringInput.characters)
        reversedString.append(char[characterIndex])
    }
    return reversedString
}

stringReverser("Hello")




//Bonus: Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.


