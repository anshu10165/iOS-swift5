import Foundation
// Point1
let a = -4
let b = a.isMultiple(of: 4)
print(b)

// Enum enhancments
enum PasswordError: Error {
    case short
    case obvious
    case simple
    case old
}

// Enum Updates
func showOld(error: PasswordError) {
    switch error {
    case .short:
        print("Your password was too short.")
    case .obvious:
        print("Your password was too obvious.")
    @unknown default:
        print("Your password was too simple.")
    }
}

func showNew(error: PasswordError) {
    switch error {
    case .short:
        print("Your password was too short.")
    case .obvious:
        print("Your password was too obvious.")
    default:
        print("Your password wasn't suitable.")
    }
}


//let screencast = Post.podcast
//readPost(screencast) // "You are watching a video."
//let course = Post.course
//readPost(course) // "You are watching a video."


// Dictionary - Updates!!!!!

let d: [String: String?] = ["a": "1", "b": nil, "c": "3"]

let r1 = d.filter { $0.value != nil }.mapValues { $0! }
print(r1)
let r2 = d.reduce(into: [String: String]()) { (result, item) in result[item.key] = item.value }
print(r2)


let r4 = d.compactMapValues({$0})
print(r4)

let pets: KeyValuePairs = ["dog": "Sclip", "cat": "Peti"]

var x = 1
x.self = 2
print(x.self)

let id = \Int.self

x[keyPath: id] = 3
print(x[keyPath: id])

class Tutorial {
    let title: String
    let author: String
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

/* SWIFT 4.2 */
var tutorial = Tutorial(title: "What's New in Swift 5.0?", author: "Cosmin Pupaza")
tutorial.self = Tutorial(title: "What's New in Swift 5?", author: "Cosmin Pupăză")
print(tutorial.title)

/* SWIFT 5.0 */
tutorial[keyPath: \.self] = Tutorial(title: "What's New in Swift somthine?",
                                     author: "Cosmin Pupăză")
print(tutorial.title)


// Swift4
let myData = [1, 2, 3, 4, 5]

let newData1 = myData.filter({ $0 > 4 }).count
print(newData1)

let newData = myData.lazy.filter({ $0 > 4 }).count
print(newData)


//Swift5
[1, 2, 3, 4, 5].count(where: { $0 > 0 }) // => 3


// Swift 4.2
let myStringData = "ID10"
var digits = 0
myStringData.forEach { digits += Int(String($0)) != nil ? 1 : 0 }
print("Id has \(digits) digits.")

// Swift 5
var digitsNew = 0
myStringData.forEach { digitsNew += $0.isNumber ? 1 : 0 }
print("Id has \(digitsNew) digits.")

// Swift 4.2
let username = "bond007"
var letters = 0
username.unicodeScalars.forEach {
    letters += (65...90) ~= $0.value || (97...122) ~= $0.value ? 1 : 0
}
print("Username has \(letters) letters.")

// swift5
var letters1 = 0
username.unicodeScalars.forEach { letters1 += $0.properties.isAlphabetic ? 1 : 0 }
print("Username has \(letters1) letters.")





