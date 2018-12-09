//
//  mainViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-12-09.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func experienceButton(_ sender:UIButton){
        performSegue(withIdentifier: "experienceSegue", sender: self)
    }
    
}
