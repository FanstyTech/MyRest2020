//
//  ProfileViewController.swift
//  MyRest
//
//  Created by ashammad99 on 12/10/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var tableVIew: UITableView!
    
    var objects: [ProfileConstants.profileItem] = []
    
    var object: ProfileConstants?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


}
extension ProfileViewController {
    func setupView() {
        tableVIew.register(UINib.init(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
    }
    func localized() {
        
    }
    func setupData() {
        objects.append(.personalInfo)
        objects.append(.favourite)
        objects.append(.password)
        objects.append(.language)
        objects.append(.ContactAdmin)
        objects.append(.Report)
        objects.append(.Logout)
        
    }
    func fetchData() {
        
    }
}
extension ProfileViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell",for: indexPath) as! ProfileTableViewCell
        cell.object = self.objects[indexPath.row]
        cell.configureCell()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "infoViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
