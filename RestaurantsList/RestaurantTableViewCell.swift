//
//  RestaurantTableViewCell.swift
//  inside outlet group of UITableView Cell
//
//  Created by xincun li on 2/29/16.
//  Copyright © 2016 Depaul University. All rights reserved.
//

import UIKit


class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet weak var previewImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingView: CosmosView!
    @IBOutlet weak var addressLabel: UILabel!
    
}
