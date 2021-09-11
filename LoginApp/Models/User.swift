//
//  User.swift
//  LoginApp
//
//  Created by Александр Макаров on 10.09.2021.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "User",
            password: "pass",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let favoriteFood: String
    let age: Int
    let sex: Sex
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alexander",
               surname: "Makarov",
               favoriteFood: "Water",
               age: 33,
               sex: .male)
    }
}

enum Sex {
    case male, female
}
