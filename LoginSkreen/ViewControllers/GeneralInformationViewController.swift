//
//  TwoScreenViewController.swift
//  LoginSkreen
//
//  Created by MacBook on 09.04.2021.
//

import UIKit

class GeneralInformationViewController: UIViewController {

    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var midleName: UILabel!
    @IBOutlet var gender: UILabel!
    @IBOutlet var age: UILabel!
    
    var nameValue: String!
    var surnameMediator: String!
    var midleNameMediator: String!
    var genderMediator:String!
    var ageMediator: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = nameValue
        surname.text = surnameMediator
        midleName.text = midleNameMediator
        gender.text = genderMediator
        age.text = ageMediator
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMe = segue.destination as? AboutMeViewController else {return}

        aboutMe.aboutMeValue = Person.getNameOfUser()
    }
    

}
