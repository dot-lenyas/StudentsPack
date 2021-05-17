//
//  Meeting.swift
//  StudentsPack
//
//  Created by lazarenko_lo on 15.05.2021.
//

import Foundation
class Meeting
{
    
    
    public var Teachers: [Teacher]
    public var Parents: [Parent]
    public var Lessons: [Lesson]
    
    init(teachers: [Teacher], parents: [Parent], lessons: [Lesson])
    {
        Teachers = teachers
        Parents = parents
        Lessons = lessons
        meeting()
    }
    public func meeting()
    {
        var flag: Bool = false
        for lesson in Lessons
        {
            for teacher in Teachers
            {
                if lesson.teacher.Name == teacher.Name
                {
                    flag = true
                    break
                }
            }
            if flag
            {
                for parent in Parents
                {
                    for child in parent.childrens
                    {
                        for children in lesson.students
                        {
                            if child.Name == children.Name
                            {
                            
                                parent.TellAboutSomeChild(children: child)
                            }
                        }
                    }
                    
                }
            }
        }
    }
        
}
