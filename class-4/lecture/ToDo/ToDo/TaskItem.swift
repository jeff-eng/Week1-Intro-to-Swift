//
//  TaskItem.swift
//  ToDo
//
//  Created by Jeffrey Eng on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

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