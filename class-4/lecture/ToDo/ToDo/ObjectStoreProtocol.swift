//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by Jeffrey Eng on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

//Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.
protocol ObjectStoreProtocol: class {
    associatedtype Object: Identity
    var taskItems : [Object] { get set }
    
    func add(object: Object) //add
    func remove(object: Object) //remove
    func objectAtIndex(index: Int) -> Object//objectAtIndex
    func count() -> Int //count
    func allTasks() -> [Object] //allObjects
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
    
    func allTasks() -> [Object] {
        return self.taskItems
    }
    
    func save() {
         print("Save method has not been implemented yet")
    }
}