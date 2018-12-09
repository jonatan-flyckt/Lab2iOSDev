//
//  SkillsViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-12-09.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let press = UITapGestureRecognizer(target: self, action: #selector(tapFunction))
        imageView.addGestureRecognizer(press)
    }
    
    @objc func spinny(sender:UITapGestureRecognizer) {
        
        
        
    }
    
    
}
