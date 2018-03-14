//
//  Spot.swift
//  TourSpotTW
//
//  Created by 林松賢 on 2018/3/13.
//  Copyright © 2018年 軟實力工作室. All rights reserved.
//

import Foundation
import UIKit
class Spot {
    var spotName = ""
    var spotLocation = ""
    var spotTelephone = ""
    var spotOpenHours = ""
    var spotImage = ""
    
    init(spotName: String, spotLocation: String, spotTelephone: String, spotOpenHours: String, spotImage: String) {
        self.spotName = spotName
        self.spotLocation = spotLocation
        self.spotTelephone = spotTelephone
        self.spotOpenHours = spotOpenHours
        self.spotImage = spotImage
    }
}
