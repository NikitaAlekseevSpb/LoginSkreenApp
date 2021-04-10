//
//  User.swift
//  LoginSkreen
//
//  Created by MacBook on 08.04.2021.
//

class User {
    let userLogin: String
    let userPassword: String
    
    init(userName: String, userPassword: String) {
        self.userLogin = userName
        self.userPassword = userPassword
    }
    
    static func getUser() -> User {
        User(userName: "1", userPassword: "1")
    }
}
