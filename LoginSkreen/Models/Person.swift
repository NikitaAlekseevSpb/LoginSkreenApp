//
//  Person.swift
//  LoginSkreen
//
//  Created by MacBook on 08.04.2021.
//

class Person {
    
    let userPerson = User.getUser()
    let name: String
    let firstName: String
    
    init(name: String, firstName: String) {
        self.name = name
        self.firstName = firstName
    }
    
    static func getNameOfUser() -> Person{
        Person.init(name: "Nikita", firstName: "Kryuchkov")
    }

}

