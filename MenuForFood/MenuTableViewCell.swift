//
//  MenuTableViewCell.swift
//  MenuForFood
//
//  Created by Nguyen Thanh Thuc on 15/12/2016.
//  Copyright © 2016 Nguyen Thanh Thuc. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String? {
        didSet {
            nameLabel.text = name
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
