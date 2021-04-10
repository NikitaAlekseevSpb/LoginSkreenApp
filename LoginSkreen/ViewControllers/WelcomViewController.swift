//
//  WelcomViewController.swift
//  LoginSkreen
//
//  Created by MacBook on 03.04.2021.
//

import UIKit

class WelcomViewController: UIViewController {

    @IBOutlet var welcomLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomLabel.text = "Welcom, \(user.person.name)"
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
