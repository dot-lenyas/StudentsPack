//
//  Lesson.swift
//  StudentsPack
//
//  Created by lazarenko_lo on 15.05.2021.
//

import Foundation

class Lesson
{
    public var teacher: Teacher
    public var students: [Student]
    init(_ students: [Student], _ name: String)
    {
        var rand = Int.random(in: 0..<4)
        if rand == 0
        {
            self.teacher = StupidTeacher(name: name)
        }
        else
        {
            self.teacher = Teacher(name: name)
        }
        self.students = students
        SettingsMarks()
    }
    public func SettingsMarks()
    {
        var rand = Int.random(in: 0..<students.count)
        for i in 0..<rand+1
        {
            var randStudent = Int.random(in: 0..<students.count)
            teacher.SetMark(student: students[randStudent])
            if ((i + 1) % 5 == 0) {
                teacher.mood = Bool.random()
            }
        }
    }
    
}
