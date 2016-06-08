//Week 1 Class 2 Homework Assignment

import UIKit

//DONE: Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns
var planets = ["Mercury", "Venus", "Mars", "Jupiter", "Saturn"]

func earthChecker(inout array: [String]) {
    for _ in planets {
        if !planets.contains("Earth") {
            planets.append("Earth")
        }
    }
}

earthChecker(&planets)



//DONE: Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”
let singleStringOfPlanets = planets.reduce("") { (endProduct, planet) -> String in
    return endProduct + planet + ", "
}



//DONE: Declare and implement a dictionary that can contain as values Strings, Ints, etc
let seahawks = [31 : "Kam Chancellor", 25 : "Richard Sherman", 29 : "Earl Thomas"]


//DONE: Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter
var sportsLeagues = ["NFL" : "National Football League", "NBA" : "National Basketball Association", "MLB" : "Major League Baseball", "MLS" : "Major League Soccer"]

func fullLeagueName (acronym: String) {
    sportsLeagues.filter { (key: String, value: String) -> Bool in
        return key == acronym
    }
}

fullLeagueName("NFL")





//DONE: Write examples for union, intersect, subtract, exclusive Or set operations
let firstAnimalSet: Set = ["Bear", "Rabbit", "Turtle", "Pigeon", "Mole", "Salmon"]
let secondAnimalSet: Set = ["Platypus", "Turtle", "Emu", "Tiger", "Salmon", "Rat"]

let unionOfAnimals = firstAnimalSet.union(secondAnimalSet) //new set with all the unique values of the two sets
let intersectOfAnimals = firstAnimalSet.intersect(secondAnimalSet) //new set with only the values in common
let subtractOfAnimals = firstAnimalSet.subtract(secondAnimalSet) //creates a new set by removing values in first set that appear in the second set
let exclusiveOrOfAnimals = firstAnimalSet.exclusiveOr(secondAnimalSet) //creates new set by finding matches between the two sets and discarding those values in creation of the new set



//TODO: Write a function that counts repeating words and prints out the count of each











//DONE: Add two numbers without using “+”
var firstNum = 5
var secondNum = 10

for _ in 1...firstNum { // Loop the number of times defined in firstNum
    secondNum += 1      // Add the value of one to secondNum
}





