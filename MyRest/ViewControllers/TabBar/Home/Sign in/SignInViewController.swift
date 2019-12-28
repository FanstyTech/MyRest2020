//
//  SignInViewController.swift
//  MyRest
//
//  Created by ashammad99 on 12/4/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import UIKit
import FlagPhoneNumber
class SignInViewController: UIViewController {

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
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    @IBAction func btnSignIn(_ sender: Any) {
    }
    
    @IBAction func btnForgetPassword(_ sender: Any) {
        let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "VerificationViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "SignUpViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
extension SignInViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
