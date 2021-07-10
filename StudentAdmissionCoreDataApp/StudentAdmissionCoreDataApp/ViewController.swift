//
//  ViewController.swift
//  StudentAdmissionCoreDataApp
//
//  Created by DCS on 10/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let mybuttonAdmin:UIButton = {
        let button = UIButton()
        button.setTitle("Admin Login", for: .normal)
        button.addTarget(self, action: #selector(AdminloginTapped), for: .touchUpInside)
        button.backgroundColor = .green
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let mybuttonStud:UIButton = {
        let button = UIButton()
        button.setTitle("Student Login", for: .normal)
        button.addTarget(self, action: #selector(StudloginTapped), for: .touchUpInside)
        button.backgroundColor = .green
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let myBackGroungImageView : UIImageView = {
        let backgroungImageView = UIImageView()
        backgroungImageView.contentMode = .scaleAspectFill
        backgroungImageView.clipsToBounds = true
        backgroungImageView.image = UIImage(named: "img3")
        return backgroungImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Student Management System"
        view.addSubview(myBackGroungImageView)
        view.addSubview(mybuttonAdmin)
        view.addSubview(mybuttonStud)
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myBackGroungImageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        mybuttonAdmin.frame = CGRect(x: 40, y: 180, width: view.frame.width - 80, height: 50)
        mybuttonStud.frame = CGRect(x: 40, y: 250, width: view.frame.width - 80, height: 50)
        
    }
    
    @objc private func AdminloginTapped()
    {
        let vc = AdminLoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func StudloginTapped()
    {
        let vc = StudLoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}


