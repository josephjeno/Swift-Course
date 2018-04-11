//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var newString = str + " Joe!"

// cycles through each character in string
for character in newString.characters {
    
    print(character)
    
}

// NSString has more functions than typical string
let newTypeString = NSString(string: "Hello Joe!")

// ends at 5th character
newTypeString.substring(to: 5)

// starts at 4th character
newTypeString.substring(from: 4)

NSString(string: newTypeString.substring(from: 6)).substring(to: 3)

// gives string at 6th character with 3 length
newTypeString.substring(with: NSRange(location: 6, length: 3))

// determines if string contains given string
if newTypeString.contains("Joe") {
    
    print("newTypeString contains Joe!")
}

// returns array of strings separated by given string
var arrayNew = newTypeString.components(separatedBy: " ")

// replaces Hello with Goodbye
newTypeString.replacingOccurrences(of: "Hello", with: "Goodbye")

arrayNew[1]

newTypeString.uppercased

newTypeString.lowercased

5 % 2

// external used when function called, internal used in body
func sample (external internal: String) {}

// _ allows for function to be called without parameter name
func sample (_ internal: String) {}

// sets up a default parameter if parameter isn't mentioned
func sample (score: Int = 0) {}

struct Person {
    var name: String
}

let firstPerson = Person(name: "Jasmine")

var string = String()

var places = [Dictionary<String, String>()]

places.count

places[0]

places.remove(at: 0)

places

places.count

places.append(["name":"Taj Mahal", "lat":"27.175277","lon":"78.042128"])

