//
//  infoViewController.swift
//  MyRest
//
//  Created by ashammad99 on 12/26/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import UIKit

class infoViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var ViewGoldUser: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var objects: [infoProfileConstants.profileItem] = []
    
    var object: infoProfileConstants?
    
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
    @IBAction func btnEdit(_ sender: Any) {
        let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "editProfileViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btnBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
extension infoViewController {
    func setupView() {
        tableView.register(UINib.init(nibName: "infoTableViewCell", bundle: nil), forCellReuseIdentifier: "infoTableViewCell")
    }
    func localized() {
        
    }
    func setupData() {
        objects.append(.name)
        objects.append(.MobileNo)
        objects.append(.Email)
        objects.append(.Gender)
        objects.append(.Birthday)
    }
    func fetchData() {
        
    }
}
extension infoViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "infoTableViewCell",for: indexPath) as! infoTableViewCell
        cell.object = self.objects[indexPath.row]
        cell.configureCell()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
 
    
}
