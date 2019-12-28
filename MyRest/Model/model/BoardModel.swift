//
//  BoardModel.swift
//  MyRest
//
//  Created by ashammad99 on 11/30/19.
//  Copyright © 2019 ashammad99. All rights reserved.
//

import Foundation

enum Board {
    case board1
    case board2
    case board3
    
    var title: String {
        switch self {
            
        case .board1:
            return "Find Food You Love"
        case .board2:
            return "Fastest Delivery"
        case .board3:
            return "Save Some Cash"

        }
    }
    var Description: String {
        switch self {
            
        case .board1:
            return "Write Your Description in boardd 1"
        case .board2:
            return "Write Your Description in boardd 2"
        case .board3:
            return "Write Your Description in boardd 3"

        }
    }
}
