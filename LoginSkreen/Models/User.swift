//
//  User.swift
//  LoginSkreen
//
//  Created by MacBook on 08.04.2021.
//

class User {
    let userName: String
    let userPassword: String
    
    init(userName: String, userPassword: String) {
        self.userName = userName
        self.userPassword = userPassword
    }
    
    static func getUser() -> User {
        User(userName: "name", userPassword: "1")
    }
}
