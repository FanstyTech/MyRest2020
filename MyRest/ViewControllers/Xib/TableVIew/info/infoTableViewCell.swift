//
//  infoTableViewCell.swift
//  MyRest
//
//  Created by ashammad99 on 12/26/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import UIKit

class infoTableViewCell: UITableViewCell {

    @IBOutlet weak var icItem: UIImageView!
    
    @IBOutlet weak var lblItem: UILabel!
    
    @IBOutlet weak var lblValue: UILabel!
    
    var object: infoProfileConstants.profileItem? = nil 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell() {
        if let obj = self.object {
            self.icItem.image = obj.image
            self.lblItem.text = obj.Item
            self.lblValue.text = obj.ItemValue
        }
    }
    
}
