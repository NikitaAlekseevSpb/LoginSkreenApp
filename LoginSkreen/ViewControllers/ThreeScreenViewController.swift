//
//  ThreeScreenViewController.swift
//  LoginSkreen
//
//  Created by MacBook on 09.04.2021.
//

import UIKit

class ThreeScreenViewController: UIViewController {

    @IBOutlet var photoPerson: UIImageView!
    var photoValue: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoPerson.image = photoValue
        
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
