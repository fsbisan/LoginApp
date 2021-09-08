//
//  ViewController.swift
//  LoginApp
//
//  Created by Александр Макаров on 07.09.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    // Передача данных из поля User Name в переменную посредник на втором экране
    //WelcomeViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeLabelText = userNameTF.text
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBActions
    
    @IBAction func LoginPressed() {
        if userNameTF.text != "User" || passwordTF.text != "pass" { showAlert(with: "Invalid login or password", and: "Pleas, enter correct login and password")
        }
    }
    
    @IBAction func forgotUNPressed() {
        showAlert(with: "OOps!", and: "Your name is User")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "OOps!", and: "Your password is pass")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    //MARK: - Private Methods
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage
                                      , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

