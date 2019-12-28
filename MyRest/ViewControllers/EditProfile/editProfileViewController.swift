//
//  editProfileViewController.swift
//  MyRest
//
//  Created by ashammad99 on 12/26/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import UIKit

class editProfileViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    
    
    @IBOutlet weak var lblFullName: UILabel!
    
    @IBOutlet weak var viewGoldUser: UIView!
    
    @IBOutlet weak var txtFullName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPhoneNumber: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtBirthday: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()

    }
 
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func btnPickImage(_ sender: Any) {
    }
    
    @IBAction func btnSave(_ sender: Any) {
    }
}
extension editProfileViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
