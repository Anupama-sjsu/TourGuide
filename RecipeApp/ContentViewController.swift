//
//  ContentViewController.swift
//  RecipeApp
//
//  Created by Nakul Tirumalai on 3/20/21.
//  Copyright © 2021 AnupamaKurudi. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var myTableView: UITableView!
    
    let data = [
        "San Francisco",
        "Santa Cruz",
        "San Jose",
        "Oakland",
        "Berkley",
        "Palo Alto",
        "Cupertino",
        "Los Gatos",
        "Carmel By The Sea"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

}
