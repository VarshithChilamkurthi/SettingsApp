//
//  SettingsTableViewCell.swift
//  SettingsApp
//
//  Created by Varshith Chilamkurthi on 04/06/24.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet var rowImage: UIImageView!
    @IBOutlet var rowLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
