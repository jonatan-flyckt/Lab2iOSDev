//
//  ExperienceTableCell.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-12-09.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell{
    
    @IBOutlet var expImage: UIImageView!
    @IBOutlet var expTitle: UILabel!
    @IBOutlet var expTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

struct Experience {
    var imageName: String
    var title: String
    var timePeriod: String
    var description: String
}
