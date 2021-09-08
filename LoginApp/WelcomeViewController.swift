//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Александр Макаров on 07.09.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLabelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome " + welcomeLabelText + "!"
    }
    
    @IBAction func LogOutButtonPressed() {
        dismiss(animated: true) {
        }
    }
}
