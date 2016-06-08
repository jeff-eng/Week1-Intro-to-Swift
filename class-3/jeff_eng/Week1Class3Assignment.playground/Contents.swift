//Week 1 Class 3 Assignment

import UIKit


//Declare Identity protocol with id function
protocol Identity {
    var id: String { get set }
}

//Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)
class TaskItem: Identity {
    let taskName: String
    let dateCreated: NSDate
    var id: String
    
    init(taskName: String, dateCreated: NSDate) {
        self.taskName = 
    }
    
}


//Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.

//Extend ObjectStore protocol to provide basic implementation for functions

//Create Store singleton that will conform to ObjectStore protocol and implement requirements

//Demonstrate adding / removing of ToDo items.


