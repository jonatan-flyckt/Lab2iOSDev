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
        self.portrait.clipsToBounds = true
        self.descriptionText.text = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
        self.contactText.text = "fljo1589@student.ju.se"
    }
    
    @IBAction func experienceButton(_ sender:UIButton){
        performSegue(withIdentifier: "experienceSegue", sender: self)
    }
    
}
