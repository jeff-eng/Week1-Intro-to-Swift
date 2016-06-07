//Week 1 Class 2 Homework Assignment

import UIKit

//Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns
var planetsWithEarth = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn"]

func earth(array: [String]) {
    
}



//Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”
let singleStringOfPlanets = planetsWithEarth.reduce("") { (endProduct, planet) -> String in
    return endProduct + planet + ", "
}



//Declare and implement a dictionary that can contain as values Strings, Ints, etc
let seahawks = [31 : "Kam Chancellor", 25 : "Richard Sherman", 29 : "Earl Thomas"]


//Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter




//Write examples for union, intersect, subtract, exclusive Or set operations




//Write a function that counts repeating words and prints out the count of each




//Add two numbers without using “+”
