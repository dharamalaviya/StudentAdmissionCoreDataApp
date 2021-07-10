//
//  StudLoginVC.swift
//  StudentAdmissionCoreDataApp
//
//  Created by DCS on 10/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class StudLoginVC: UIViewController {
    
    private let usernameTextField:UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Username"
        textfield.textAlignment = .center
        textfield.borderStyle = .roundedRect
        textfield.backgroundColor = .gray
        return textfield
    }()
    
    private let passwordTextField:UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.textAlignment = .center
        textfield.borderStyle = .roundedRect
        textfield.backgroundColor = .gray
        textfield.isSecureTextEntry = true
        return textfield
    }()
    
    private let mybutton:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let myBackGroungImageView : UIImageView = {
        let backgroungImageView = UIImageView()
        backgroungImageView.contentMode = .scaleAspectFill
        backgroungImageView.clipsToBounds = true
        backgroungImageView.image = UIImage(named: "img4")
        return backgroungImageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(myBackGroungImageView)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(mybutton)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myBackGroungImageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        usernameTextField.frame = CGRect(x: 40, y: 200, width:view.frame.width - 80, height: 40)
        passwordTextField.frame = CGRect(x: 40, y: 260, width: view.frame.width - 80, height: 40)
        mybutton.frame = CGRect(x: 40, y: 350, width: view.frame.width - 80, height: 40)
    }
    

    @objc private func loginTapped()
    {
        if usernameTextField.text == "Student" && passwordTextField.text == "student"
        {
            UserDefaults.standard.set(usernameTextField.text!, forKey: "email")
            let vc = DetailStudVC()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            let alert = UIAlertController(title: "Alert!", message: "Email and Password didn't match", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
}
