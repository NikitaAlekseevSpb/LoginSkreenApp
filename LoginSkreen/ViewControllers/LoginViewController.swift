//
//  ViewController.swift
//  LoginSkreen
//
//  Created by MacBook on 03.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    let person = Person.getNameOfUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let tabBarController = segue.destination as! UITabBarController

        for view in tabBarController.viewControllers! {
            if let welcomVC = view as? WelcomViewController {
               welcomVC.valueWelcomLabel = "\(person.name) \(person.surname) "
            
            } else if let navigationVC = view as? UINavigationController{
                let generalInfVC = navigationVC.topViewController as! GeneralInformationViewController
                generalInfVC.nameValue = person.name
            
            } else {
                let threeScreenVC = view as? ThreeScreenViewController
                threeScreenVC?.photoValue = UIImage(named: person.photo)
            }
        }
    }
    
   

    @IBAction func logIn() {
        guard let name = nameField.text, name == person.userPerson.userLogin else {
            showAlert(
                with: "Invalid login or password!",
                and: "Please, enter correct login and password")
            return
        }
        guard let password = passwordField.text, password == person.userPerson.userPassword else {
            showAlert(
                with: "Invalid login or password!",
                and: "Please, enter correct login and password")
            passwordField.text = ""
            return
        }
        performSegue(withIdentifier: "ShowWelcomVC", sender: nil)
    }
    
    @IBAction func buttonForgotUserName() {
        showAlert(with: "Oops!", and: "Your name is \(person.userPerson.userLogin)😉")
    }
    
    @IBAction func buttonForgotPassword() {
        showAlert(with: "Oops!", and: "Your password is \(person.userPerson.userPassword)🙂")
    }
    
    @IBAction func unwind( for segue: UIStoryboardSegue){
        dismiss(
            animated: true,
            completion: {  self.nameField.text = ""; self.passwordField.text = "" })
    }
}

extension ViewController {
    private func showAlert( with title: String, and message: String){
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
    
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameField {
            passwordField.becomeFirstResponder()
        } else {
            logIn()
        }
        return true
    }
}
