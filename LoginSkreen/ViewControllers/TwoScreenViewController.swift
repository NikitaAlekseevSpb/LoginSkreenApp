//
//  TwoScreenViewController.swift
//  LoginSkreen
//
//  Created by MacBook on 09.04.2021.
//

import UIKit

class TwoScreenViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var valueLable: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = valueLable ?? ""
        
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
