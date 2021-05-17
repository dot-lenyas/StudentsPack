//
//  Teacher.swift
//  StudentsPack
//
//  Created by lazarenko_lo on 15.05.2021.
//

import Foundation
class Teacher
{
    public var mood: Bool
    public var Name: String
    init(name: String)
    {
        Name = name
        mood = Bool.random()
    }
    public func SetMark(student: Student)
    {
        if mood && student.excellent
        {
            student.SetMark(mark: 5)
        }
        else if !mood && student.excellent
        {
            var a = Int.random(in: 4..<6)
            student.SetMark(mark: a)
        }
        else if mood && !student.excellent
        {
            student.SetMark(mark: 4)
        }
        else if !mood && !student.excellent
        {
            student.SetMark(mark: 3)
        }
        if student.excellent
        {
            student.IsExcellent()
        }
    }
}

class StupidTeacher: Teacher
{
    override init(name: String)
    {
        super.init(name: name)
    }
    public override func SetMark(student: Student)
    {
        if mood
        {
            student.SetMark(mark: 5)
        }
        else
        {
            student.SetMark(mark: 2)
        }
    }
}
