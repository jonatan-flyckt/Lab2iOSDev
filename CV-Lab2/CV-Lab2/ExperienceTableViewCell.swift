//
//  ExperienceTableCell.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-12-09.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell{
    
    @IBOutlet weak var expImage: UIImageView!
    
    @IBOutlet weak var expTitle: UILabel!
    
    @IBOutlet weak var expTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

struct Experience {
    var image: UIImage?
    var title: String
    var timePeriod: String
    var description: String
}
