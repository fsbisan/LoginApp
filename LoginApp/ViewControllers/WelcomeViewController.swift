//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Александр Макаров on 07.09.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var someUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(someUser.person.fullName) !"
    }
    
    @IBAction func LogOutButtonPressed() {
        dismiss(animated: true) {
        }
    }
}
