//
//  Student.swift
//  StudentsPack
//
//  Created by lazarenko_lo on 15.05.2021.
//

import Foundation


class Student
{
    public var Name: String
    public var excellent: Bool = true
    private var marks = [Int]()
    
    init(name: String)
    {
        self.Name = name
    }
    public func IsExcellent()
    {
        for mark in marks
        {
            if mark != 5
            {
                excellent = false
                break;
            }
            else
            {
                continue
            }
        }
    }
    public func SetMark(mark: Int)
    {
        marks.append(mark)
    }
    public func GetMarks() -> [Int]
    {
        return marks
    }
}
