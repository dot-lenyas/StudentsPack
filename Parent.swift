//
//  Parent.swift
//  StudentsPack
//
//  Created by lazarenko_lo on 15.05.2021.
//

import Foundation
class Parent
{
   
    private var dictionary = [
        "GOOD": ["My child is the best!!!!!!!!!!!"],
        "NORMAL": ["My child is OK"],
        "BAD": ["Oh my god, my child is programmer"],
        "VERY BAD": ["Oh no, my child is tester"],
        "GOOD ALL": ["My children are really good"],
        "BAD ALL": ["My children are testers"]
    ]
    public var childrens: [Student]
    public var mood: Bool = false
    public var Name: String
    init(childrens: [Student], name: String)
    {
        mood = Bool.random()
        self.childrens = childrens
        Name = name
    }
    public func TellAboutRandomChild()
    {
        let rand = Int.random(in: 0..<childrens.count)
        if mood && childrens[rand].excellent
        {
            print(dictionary["GOOD"]!)
        }
        else if (!mood && childrens[rand].excellent)
        {
            print(dictionary["BAD"]!)
        }
        else if (mood && !childrens[rand].excellent)
        {
            print(dictionary["NORMAL"]!)
        }
        else
        {
            print(dictionary["VERY BAD"]!)
        }
    }
    public func TellAboutSomeChild(children: Student)
    {
        if mood && children.excellent
        {
            print(dictionary["GOOD"]!)
        }
        else if (!mood && children.excellent)
        {
            print(dictionary["BAD"]!)
        }
        else if (mood && !children.excellent)
        {
            print(dictionary["NORMAL"]!)
        }
        else
        {
            print(dictionary["VERY BAD"]!)
        }
    }
    public func TellAboutAllChildren()
    {
        var count = 0
        for child in childrens
        {
            if child.excellent
            {
                count += 1
            }
        }
        if (mood && childrens.count / 2 <= count)
        {
            print(dictionary["GOOD ALL"]!)
        }
        else
        {
            print(dictionary["BAD ALL"]!)
        }
    }
    
    
}


class GrandMother: Parent
{
    init(Children: [Student], Name: String)
    {
        super.init(childrens: Children, name: Name)
    }
    override public func TellAboutRandomChild()
    {
        let rand = Int.random(in: 0..<childrens.count)
        print("My child - \(childrens[rand].Name) the best")
    }
    override public func TellAboutSomeChild(children: Student)
    {
        var flag = false
        for child in childrens
        {
            if child.Name == children.Name
            {
                print("My child - \(children.Name) the best")
                flag = true
                break
            }
        }
        if flag
        {
            print("The \(children.Name) is really bad. He is working in DROM")
        }
    }
    
}
