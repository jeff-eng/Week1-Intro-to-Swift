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
    
    init(taskName: String) {
        self.taskName = taskName
        self.dateCreated = NSDate()
        self.id = NSUUID().UUIDString
    }
    
    func taskDescription() -> String {
        return "Task Name: \(self.taskName) created on \(self.dateCreated) (ID \(self.id))."
    }
    
}


//Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.
protocol ObjectStoreProtocol: class {
    associatedtype Object: Identity
    
    func add(object: Object) //add
    func remove(object: Object) //remove
    func objectAtIndex(index: Int) -> Object//objectAtIndex
    func count() -> Int //count
    func allObjects() -> [Object] //allObjects
}

//Extend ObjectStore protocol to provide basic implementation for functions
extension ObjectStoreProtocol {
    func add(object: Object) {
        
    }
}
//Create Store singleton that will conform to ObjectStore protocol and implement requirements

//Demonstrate adding / removing of ToDo items.


