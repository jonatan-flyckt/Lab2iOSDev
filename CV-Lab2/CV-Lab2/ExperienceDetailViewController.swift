//
//  ExperienceDetailViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-12-09.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {
    
    @IBOutlet weak var navigation: UINavigationItem!
    
    @IBOutlet weak var detailsImage: UIImageView!
    
    @IBOutlet weak var detailsDescription: UILabel!
    
    @IBOutlet weak var detailsTimePeriod: UILabel!
    
    var experience: Experience! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigation.title = experience.title
        detailsImage.image = experience.image
        detailsImage.contentMode = .scaleAspectFit
        detailsDescription.text = experience.description
        detailsTimePeriod.text = experience.timePeriod
    }
    
}
