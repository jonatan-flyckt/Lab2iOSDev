//
//  experienceViewController.swift
//  CV-Lab2
//
//  Created by Jonatan Flyckt on 2018-11-21.
//  Copyright © 2018 Jonatan Flyckt. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {

    var sections = ["Work Experience", "Education"]
    var experiences = [[Experience]]()
    
    private func populateExperiences(){
        let work1 = Experience(image: UIImage(named: "work"), title: "Account Manager", timePeriod: "2008-2013", description: "One To One AB, telemarketing full time.")
        let work2 = Experience(image: UIImage(named: "work"), title: "Account Manager", timePeriod: "2013-2015", description: "Solid Business Sverige AB, telemarketing full time.")
        let work3 = Experience(image: UIImage(named: "work"), title: "Account Manager", timePeriod: "2015-", description: "Premium Sales AB, telemarketing part time.")
        let education1 = Experience(image: UIImage(named: "education"), title: "Tekniskt Basår", timePeriod: "2015-2016", description: "Preparational year with physics, maths and chemistry at Jönköping University")
        let education2 = Experience(image: UIImage(named: "education"), title: "Datateknik - Mjukvaruutveckling och mobila plattformar", timePeriod: "2016-2019", description: "Software engineering studies at Jönköping \nUniversity")
        
        self.experiences.append([work1, work2, work3])
        self.experiences.append([education1, education2])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateExperiences()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        return experiences[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceTableViewCell", for: indexPath) as? ExperienceTableViewCell else {
            //fatalError("error")
            return UITableViewCell()
        }
        let experience = experiences[indexPath.section][indexPath.row]
        cell.expImage.image = experience.image
        cell.expImage.contentMode = .scaleAspectFit
        cell.expTime.text = experience.timePeriod
        cell.expTitle.text = experience.title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection: Int) -> String{
        return sections[titleForHeaderInSection]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ExperienceDetailViewController {
            if let indexPath = sender as? IndexPath {
                let experience = experiences[indexPath.section][indexPath.row]
                destination.experience = experience
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ExperienceDetailSegue", sender: indexPath)
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
