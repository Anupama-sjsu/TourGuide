//
//  ViewController.swift
//  TourGuide
//
//  Created by Nakul Tirumalai on 3/20/21.
//  Copyright © 2021 AnupamaKurudi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    
   
    let pictures: [UIImage] = [UIImage(named: "bayarea-bg.jpg")!, UIImage(named: "bayarea-bg.jpg")!, UIImage(named: "bayarea-bg.jpg")!]
    
    
    let titles: [String] = ["Beach Paradise", "Mountain Resort", "Desert Wasteland"]
    
    let descriptions: [String] = ["A beautiful beach paradise for the entire family.", "Stunning mountain view in the rockies.", "A desolate wasteland of nothing but sand."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// How many rows in the tableview?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    /// Defines what cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as! CardCell
        print(indexPath.row)
        cell.configure(picture: pictures[indexPath.row], title: titles[indexPath.row], description: descriptions[indexPath.row])
        
        return cell
    }
}

