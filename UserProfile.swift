//
//  UserProfile.swift
//  Sport App
//
//  Created by Amanda Goodhines on 11/14/17.
//  Copyright © 2017 Amanda Goodhines. All rights reserved.
//

import UIKit

class UserProfile:NSObject{
    
    //MARK: Properties
    
    
    var name: String = ""
    var age = Int()
    var gender: String = ""
    var height = Int()
    var weight = Int()
    var sport: String = ""
    var email: String = ""
    var subject = Int()
    
    init(name: String, age: Int, gender: String, height: Int, weight: Int, sport: String, email: String, subject: Int) {
        self.name = name
        self.age = age
        self.gender = gender
        self.height = height
        self.weight = weight
        self.sport = sport
        self.email = email
        self.subject = subject
    }
  
}
