//
//  ViewController.swift
//  UserLogin
//
//  Created by Umut Cörüt on 8.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var password1Input: UITextField!
    @IBOutlet weak var password2Input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signupButton(_ sender: Any) {
        func alertFunc(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.destructive, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil) }
        if password1Input.text == "" {
            alertFunc(titleInput: "Error", messageInput: "Check and re-enter the information.")
        }
        else if usernameInput.text == "" {
            alertFunc(titleInput: "Error", messageInput: "Check and re-enter the information.")
        }
        else if password1Input.text == password2Input.text {
            alertFunc(titleInput: "Congratulations", messageInput: "Registration Successful")
        }
        else {
            alertFunc(titleInput: "Error", messageInput: "Check and re-enter the information.")
        }
    }
}

