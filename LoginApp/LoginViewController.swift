//
//  ViewController.swift
//  LoginApp
//
//  Created by Александр Макаров on 07.09.2021.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    
    // MARK: - Private properties
    private let user = "User"
    private let password = "pass"
    
    //MARK: - Navigation
    // Передача данных из поля User Name в переменную посредник на втором экране
    //WelcomeViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeLabelText = userNameTF.text
    }
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    
    //MARK: - IBActions
    @IBAction func LoginPressed() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(with: "Invalid login or password",
                      and: "Pleas, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotUNPressed() {
        showAlert(with: "OOps!", and: "Your name is \(user)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "OOps!", and: "Your password is \(password)")
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
    //MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF { // Switch focus to other text field
            passwordTF.becomeFirstResponder()
        } else {
            LoginPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}

