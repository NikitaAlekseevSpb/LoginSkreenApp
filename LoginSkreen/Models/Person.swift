//
//  Person.swift
//  LoginSkreen
//
//  Created by MacBook on 08.04.2021.
//

class Person {
    
    let userPerson = User.getUser()
    let name: String
    let surname: String
    let midleName: String
    let gender: String
    let age: String
    let aboutMe:String
    let photo: String
    
    
    init(name: String,
         surname: String,
         midleName: String,
         gender: String,
         age: String,
         aboutMe: String,
         photo: String) {
        self.name = name
        self.surname = surname
        self.midleName = midleName
        self.gender = gender
        self.age = age
        self.aboutMe = aboutMe
        self.photo = photo
    }
    
    static func getNameOfUser() -> Person{
        Person.init(
            name: "Никита",
            surname: "Крючков",
            midleName: "Алексеевич",
            gender: "мужской",
            age: "27", aboutMe: "я имею много увлечений и интересов. Одно из увлечений которое меня покорило это програмирование после самостоятельного изучения основ я заинтвересовалсвя и решил изучать глубже после чего я пошел на курсы ...", photo: "photoME")
    }

}

