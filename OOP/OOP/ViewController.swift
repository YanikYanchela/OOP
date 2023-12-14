//
//  ViewController.swift
//  OOP
//
//  Created by Дмитрий Яновский on 13.12.23.
//

import UIKit

class ViewController: UIViewController {
 
    let student1 = Student(id: 1, name: "Oleg", lastName: "Gazmanof", age: 18)
    let student2 = Student(id: 2, name: "Petr", lastName: "Goraf", age: 19)
    
   let teacherSina = Teacher(id: 1, firstName: "John", lastName: "Sina")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        mathTeacher.addsubjectTaught(subjectName: "Math")
        
        let student1 = Student(id: 1, name: "Alice", lastName: "Simson", age: 20)
        let student2 = Student(id: 2, name: "Bob", lastName: "Gilgan", age: 21)
        student1.addSubject(Subject(subjectName: "Math", grade: ""))
        student2.addSubject(Subject(subjectName: "Math", grade: ""))
        student1.teachAndstudent(mathTeacher)
        student2.teachAndstudent(mathTeacher)
        
        mathTeacher.setGrade(for: student1, subjectName: "Math", grade: "A")
        mathTeacher.setGrade(for: student2, subjectName: "Math", grade: "B+")
        
        print(student1.studentInfo())
        print(student2.studentInfo())
        print(mathTeacher.teacherInfo())
       
        
       
    }


}

