//
//  SpotTableViewCell.swift
//  TourSpotTW
//
//  Created by 林松賢 on 2018/3/13.
//  Copyright © 2018年 軟實力工作室. All rights reserved.
//

import UIKit

class SpotTableViewCell: UITableViewCell {
    @IBOutlet var spotImage: UIImageView!
    @IBOutlet var spotName: UILabel!
    @IBOutlet var spotLocation: UILabel!
    @IBOutlet var spotTelephone: UILabel!
    @IBOutlet var spotOpenHours: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
