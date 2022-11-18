//
//  StudentController.swift
//  Student List
//
//  Created by Kvng Eko on 11/9/22.
//

import Foundation


class StudentController {
    init() {
        self.students = [
            Student(firstName: "Kvng", lastName: "Eko", age: 29),
            Student(firstName: "Johnny", lastName: "Bravo", age: 35),
            Student(firstName: "Barrack", lastName: "Obama", age: 45)
        ]
    }
    
    //CRUD
    
    func create(studentWithName firstName: String, lastName: String, age: Int) -> Student {
        let student = Student(firstName: firstName, lastName: lastName, age: age)
        self.students.append(student)
        
        return student
    }
    
    func delete(student: Student) {
        if let index = self.students.firstIndex(where: { $0 == student}) {
            self.students.remove(at: index)
        }
        
    }
    
    var students: [Student]
       
}
