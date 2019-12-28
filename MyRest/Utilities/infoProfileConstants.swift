//
//  infProfileConstants.swift
//  MyRest
//
//  Created by ashammad99 on 12/26/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import Foundation
import UIKit
class infoProfileConstants {
    static let shared = infoProfileConstants()
    
    enum profileItem: String {
        case name
        case MobileNo
        case Email
        case Gender
        case Birthday
        
        var Item: String? {
            switch self {


            case .name:
                return "Name"
            case .MobileNo:
                return "Mobile Number"
            case .Email:
                return "Email"
            case .Gender:
                return "Gender"
            case .Birthday:
                return "Birthday"
            }
        }
        var image: UIImage? {
            switch self {
                
            case .name:
                return "icAvatar".image_
            case .MobileNo:
                return "icPhoneNo".image_
            case .Email:
                return "icEmail".image_
            case .Gender:
                return "icGender".image_
            case .Birthday:
                return "icBirthDay".image_
            }
        }
        var ItemValue: String? {
            switch self {


            case .name:
                return "Eduardo Dutra"
            case .MobileNo:
                return "584 - 490 - 9153"
            case .Email:
                return "eduardo@email.com"
            case .Gender:
                return "Male"
            case .Birthday:
                return "April 16, 1995"
            }
        }
    }
    
    
}
