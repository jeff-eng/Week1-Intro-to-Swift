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
    var taskItems : [Object] { get set }
    
    func add(object: Object) //add
    func remove(object: Object) //remove
    func objectAtIndex(index: Int) -> Object//objectAtIndex
    func count() -> Int //count
    func allObjects() -> [Object] //allObjects
}

//Extend ObjectStore protocol to provide basic implementation for functions
extension ObjectStoreProtocol {
    func add(object: Object) {
        self.taskItems.append(object)
    }
    
    func remove(object: Object) {
        self.taskItems = self.taskItems.filter({ (taskItem) -> Bool in
            return object.id != taskItem.id
        })
    }
    
    func objectAtIndex(index: Int) -> Object {
        return self.taskItems[index]
    }
    
    func count() -> Int {
        return self.taskItems.count
    }
    
    func allObjects() -> [Object] {
        return self.taskItems
    }
}

//Create Store singleton that will conform to ObjectStore protocol and implement requirements

//--->need to create a variable that stores the array of taskItems
//var taskItems = [Object]()


//Demonstrate adding / removing of ToDo items.


