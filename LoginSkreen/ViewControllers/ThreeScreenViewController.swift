//
//  ThreeScreenViewController.swift
//  LoginSkreen
//
//  Created by MacBook on 09.04.2021.
//

import UIKit

class ThreeScreenViewController: UIViewController {

    @IBOutlet var photoPerson: UIImageView!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoPerson.image = UIImage(named: user.person.photo)
        
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
