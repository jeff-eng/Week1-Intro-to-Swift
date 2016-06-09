//
//  Store.swift
//  ToDo
//
//  Created by Jeffrey Eng on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

//Create Store singleton that will conform to ObjectStore protocol and implement requirements
class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}
    
    typealias Object = TaskItem
    
    var taskItems = [Object]()
}