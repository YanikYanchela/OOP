//
//  Teacher.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [Subject]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    // Метод для добавления предмета, который ведет учитель
    func addsubjectTaught(subjectName: String){
        subjectsTaught.append(Subject(subjectName: subjectName, grade: ""))
    }
    // Метод для установки оценки ученику по определенному предмету
    func setGrade(for student: Student, subjectName: String, grade: String) {
        student.setGrade(for: subjectName, grade: grade)
        print("\(firstName) \(lastName) выставил оценку \(grade) студенту \(student.name) по предету \(subjectName)")
        
    }
    
    
    // Метод для получения информации об учителе и предметах, которые он ведет
    func teacherInfo() -> String {
        var info = "ID:\(id) Преподаватель: \(firstName) \(lastName)\nПредметы:"
        for subject in subjectsTaught {
            info += "\n> \(subject.subjectName)"
            for student in studentsTaught{
                for sub in student.subjects{
                    if sub.subjectName == subject.subjectName{
                        info += "\n Студент: \(student.name) \(student.lastName) Оценка: \(sub.grade)"
                    }
                }
                
                
            }
        }
        
        return info
    }
    
    
    
}

