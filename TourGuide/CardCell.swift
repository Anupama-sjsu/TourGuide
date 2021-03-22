//
//  CardCell.swift
//  TourGuide
//
//  Created by Nakul Tirumalai on 3/20/21.
//  Copyright © 2021 AnupamaKurudi. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var pictureVieww: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(picture: UIImage?, title: String, description: String){
        pictureVieww.image = picture
        titleLabel.text = title
        descriptionLabel.text = description
    }
}
