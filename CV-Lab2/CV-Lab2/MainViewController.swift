//
//  mainViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-12-09.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    
    @IBOutlet weak var portrait: UIImageView!
    
    @IBOutlet weak var descriptionText: UILabel!
    
    @IBOutlet weak var contactText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.portrait.image = UIImage(named: "me")
    }
    
    @IBAction func experienceButton(_ sender:UIButton){
        performSegue(withIdentifier: "experienceSegue", sender: self)
    }
    
}
