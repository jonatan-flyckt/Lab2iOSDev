//
//  experienceViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-11-21.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class experienceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        switch (section) {
        case 1:
            return "Work"
        case 2:
            return "Education"
        default:
            return ""
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
