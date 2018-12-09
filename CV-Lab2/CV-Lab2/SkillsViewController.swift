//
//  SkillsViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-12-09.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "me")
        imageView.contentMode = .scaleAspectFit
        let press = UITapGestureRecognizer(target: self, action: #selector(spinny))
        imageView.addGestureRecognizer(press)
    }
    
    @objc func spinny(sender:UITapGestureRecognizer) {
        let animate = CABasicAnimation(keyPath: "transform.rotation")
        animate.duration = 0.4
        animate.repeatCount = 100
        animate.fromValue = 0.0
        animate.toValue = Float(Double.pi * 2.0)
        imageView.layer.add(animate, forKey: "rotate")
    }

}

