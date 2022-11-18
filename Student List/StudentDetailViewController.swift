//
//  StudentDetailViewController.swift
//  Student List
//
//  Created by Kvng Eko on 11/9/22.
//

import UIKit

class StudentDetailViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    private func updateViews() {
        guard let student = student, isViewLoaded else {return}
        
        firstNameLabel.text = student.firstName
        lastNameLabel.text = student.lastName
        ageLabel.text = "\(student.age)"
        
        
    }
    
    var student: Student? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
}
