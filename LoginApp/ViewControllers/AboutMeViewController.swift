//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Александр Макаров on 10.09.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    var someUser: User!
    
    @IBOutlet var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = someUser.person.fullName
        ageLabel.text = "Мне \(someUser.person.age) лет"
        
    }
}
