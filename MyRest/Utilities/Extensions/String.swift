//
//  String.swift
//  MyRest
//
//  Created by ashammad99 on 11/30/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import Foundation
import UIKit
extension String {

    var image_: UIImage? {
        return UIImage.init(named: self)
    }
    var localize_: String? {
        return NSLocalizedString(self, comment: "")
    }
    
}


