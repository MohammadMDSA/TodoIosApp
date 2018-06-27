//
//  Todo.swift
//  TodoIosApp
//
//  Created by Mohammad Sami on 6/26/18.
//  Copyright © 2018 Mohammad Sami. All rights reserved.
//

import Foundation

class Todo {
    
    // MARK: Properties
    private var _createdAt: Double;
    private var _title: String;
    private var _description: String;
    
    //MARK: Getters
    var createdAt: Double {
        get {return _createdAt}
    }
    
    var title: String {
        get {return _title}
    }
    
    var description: String {
        get {return _description}
    }
    
    // MARK: Initializers
    init(title: String, description: String) {
        self._title = title
        self._description = description
        
        self._createdAt = Date().timeIntervalSince1970
        
        print(self._createdAt)
    }
    
}
