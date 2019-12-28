//
//  ProfileConstant.swift
//  MyRest
//
//  Created by ashammad99 on 12/16/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import Foundation
import UIKit
class ProfileConstants {
    static let shared = ProfileConstants()
    
    enum profileItem: String {
        case personalInfo 
        case favourite
        case password
        case language
        case ContactAdmin
        case Report
        case Logout
        
        var Item: String? {
            switch self {


            case .personalInfo:
                return "Personal Information"
            case .favourite:
                return "Favorites"
            case .password:
                return "Change Password"
            case .language:
                return "Language"
            case .ContactAdmin:
                return "Contact Admins"
            case .Report:
                return "Report a Problem"
            case .Logout:
                return "Logout"

            }
        }
        var image: UIImage? {
            switch self {
                
            case .personalInfo:
                return nil
            case .favourite:
                return "icFavourite".image_
            case .password:
                return "icPassword".image_
            case .language:
                return "iclanguage".image_
            case .ContactAdmin:
                return "icEmail".image_
            case .Report:
                return "icReport".image_
            case .Logout:
                return "icLogOut".image_
            }
        }
    }
    
    
}
