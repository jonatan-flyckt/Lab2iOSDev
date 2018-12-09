//
//  experienceViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-11-21.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class experienceViewController: UIViewController {

    var sections = ["Work", "Education"]
    var experiences = [[Experience]]()
    
    private func populateExperiences(){
        let work1 = Experience(imageName: "placeHolder", title: "Account Manager", timePeriod: "2008-2013", description: "One To One AB, telemarketing full time.")
        let work2 = Experience(imageName: "placeHolder", title: "Account Manager", timePeriod: "2013-2015", description: "Solid Business Sverige AB, telemarketing full time.")
        let work3 = Experience(imageName: "placeHolder", title: "Account Manager", timePeriod: "2015-", description: "Premium Sales AB, telemarketing part time.")
        let education1 = Experience(imageName: "placeHolder", title: "Tekniskt Basår", timePeriod: "2015-2016", description: "Preparational year with physics, maths and chemistry at Jönköping University")
        let education2 = Experience(imageName: "placeHolder", title: "Datateknik - Mjukvaruutveckling och mobila plattformar", timePeriod: "2016-2019", description: "Software engineering studies at Jönköping University")
        
        self.experiences.append([work1, work2, work3])
        self.experiences.append([education1, education2])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateExperiences()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        return experiences[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ExperienceTableViewCell{
            let experience = experiences[indexPath.section][indexPath.row]
            cell.expImage.image = UIImage(named: experience.imageName)
            cell.expTitle.text = experience.title
            cell.expTime.text = experience.timePeriod
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection: Int) -> String{
        return sections[titleForHeaderInSection]
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
