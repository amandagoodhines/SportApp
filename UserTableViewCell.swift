//
//  UserTableViewCell.swift
//  Sport App
//
//  Created by Amanda Goodhines on 12/12/17.
//  Copyright © 2017 Amanda Goodhines. All rights reserved.
//GOOD....KEEP... like MealTableViewCell.swift

import UIKit

class UserTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userSportLabel: UILabel!
    @IBOutlet weak var userAgeLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
