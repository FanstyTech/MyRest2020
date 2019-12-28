//
//  SignUpViewController.swift
//  MyRest
//
//  Created by ashammad99 on 12/10/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtFullName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    @IBAction func btnSignUp(_ sender: Any) {
    }
    
    @IBAction func btnGoToLogin(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
extension SignUpViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
