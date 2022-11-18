//
//  student.swift
//  Student List
//
//  Created by Kvng Eko on 11/9/22.
//

import Foundation

class Student {
    init(firstName: String, lastName: String, age: Int){
        self.firstName = firstName
        self.lastName  = lastName
        self.age       = age
    }
    
    let firstName : String
    let lastName  : String
    let age       : Int
}

extension Student: Equatable{ }

func ==(lhs:Student, rhs: Student) -> Bool {
    if lhs.firstName != rhs.firstName{return false}
    if lhs.lastName  != rhs.lastName{return false}
    if lhs.age       != rhs.age{ return false}
    
    return true
}

