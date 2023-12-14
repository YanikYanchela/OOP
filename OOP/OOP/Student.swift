//
//  Student.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Student {
    private var id: Int
    var name: String
    var lastName: String
    private var age: Int
    var subjects: [Subject]
    private var teacher: Teacher?
    
    init(id: Int, name: String, lastName: String, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
    }
    
   
    
    // Метод для получения предмета
    func addSubject(_ subject: Subject) {
        subjects.append(subject)
    }
    // Метод для установки возраста студента
    
    func addAge(newAge: Int) {
        age = newAge
    }
    // Метод для установки имени студента
    
    func studentName(newName: String) {
        name = newName
    }
    // Метод для связывания студента с учителем
    func teachAndstudent(_ teacher: Teacher){
        self.teacher = teacher
    }
    
    // Метод для получения информации о студенте и его предметах
    
    func studentInfo() -> String {
        var info = "ID:\(id) Студент: \(name) \(lastName)\nПредметы:"
        for subject in subjects {
            info += "\n> \(subject.subjectName) - Оценка: \(subject.grade)"
        }
        return info
    }
    
    func setGrade(for subjectName: String, grade: String) {
        if let index = subjects.firstIndex(where: { $0.subjectName == subjectName }) {
            subjects[index].grade = grade
            print("Установлена оценка \(grade) по предмету \(subjectName)")
        }
    }
    

    }
   
    
    
   

