// Playground - noun: a place where people can play

import UIKit

let canvas = UIView(frame: CGRectMake(0, 0, 200, 200))
canvas.backgroundColor = UIColor(red:0.54, green:0.43, blue:0.96, alpha:1)

let title = UILabel(frame: CGRectMake(0, 70, 200, 50))
title.backgroundColor = UIColor(red:0.54, green:0.43, blue:0.96, alpha:1)
title.textColor = UIColor.whiteColor()
title.text = "Learning Swift"
title.textAlignment = .Center
title.font = UIFont(name: "Avenir Next", size: 24)

canvas.addSubview(title)

// Constants and Variables
let myName: String = "Meng"
var myAge = 32
myAge = 33

// Value Types
let label = "the width is "
let width = 100
let widthLabel = label + String(width)

// Arrays
var colors = ["red", "green", "blue"]
colors[0]
colors.append("orange")
colors.removeAtIndex(1)
colors

// Control Flow
if myAge > 30 {
    println("I'm old")
} else {
    println("I'm not old")
}

myAge > 30 ? println("I'm old") : println("I'm not old")

switch myAge {
    case 30...100: "I'm old"
    case 18...29: "I'm an adult"
    case 0...17: "I'm young"
    default: "I'm not sure"
}

for color in colors {
    println("This color is \(color)")
}

// Functions
func pointToRetina(point: Int) -> Int {
    return point * 2
}

var myNewValue = pointToRetina(320)

// Class and Struct
struct UserStruct {
    var name: String
    var age: Int
    var job: String
}

var user = UserStruct(name: "Meng", age: 32, job: "Designer")

class UserClass {
    var name: String
    var age: Int
    var job: String
    
    init(name: String, age: Int, job: String) {
        self.name = name
        self.age = age
        self.job = job
    }
}

var userA = UserStruct(name: "Meng", age: 32, job: "Designer")
var userB = userA
userB.name = "Andre"
userA.name

var personA = UserClass(name: "Meng", age: 32, job: "Designer")
var personB = personA
personB.name = "Andre"
personA.name

/* This is a 
multi-line 
comment
*/

// Optionals
var answer: String!
UILabel().text = answer

if let sureAnswer = answer {
    UILabel().text = sureAnswer
}

UILabel().text = answer ?? ""









