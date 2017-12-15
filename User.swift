//
//  userInfo.swift
//  Sport App
//
//  Created by Amanda Goodhines on 12/12/17.
//  Copyright © 2017 Amanda Goodhines. All rights reserved.
//

//NOTE CHANGE AGE BACK TO AN INTEGER ONCE YOU FIND OUT HOW TO DISPLAY IT IN TABLE VIEW AS INTEGER LIKE THE RATING IN THE MEAL EXAMPLE


import UIKit

class User{
    
    //MARK: Properties
    var name: String
    var age: String
    var gender: String?
    var height: Int
    var weight: Int
    var sport: String
    var email: String?
    var userID: String
    var photo: UIImage?
    
    //MARK: Initializer
    init?(name: String, age: String, gender: String?, height: Int, weight: Int, sport: String, email: String?, userID: String, photo: UIImage?){
    
        //MARK: Initializer should fail if: There is no name, userID or if age, height, weight are negative
        if name.isEmpty || userID.isEmpty || age.isEmpty || height < 0 || weight < 0 {
            return nil
        }
        
        //MARK: Initialize stored properties
        self.name = name
        self.age = age
        self.gender = gender
        self.height = height
        self.weight = weight
        self.sport = sport
        self.email = email
        self.userID = userID
        self.photo = photo
        
    }
    
 

  
    
    
    
}
