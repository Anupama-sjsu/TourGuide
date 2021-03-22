//
//  TourCollectionViewCell.swift
//  RecipeApp
//
//  Created by Nakul Tirumalai on 3/21/21.
//  Copyright © 2021 AnupamaKurudi. All rights reserved.
//

import UIKit

class TourCollectionViewCell: UICollectionViewCell {
    static let identifier = "TourCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images = [
            UIImage(named: "Half-Moon-Bay.jpg"),
            UIImage(named: "pescadero.jpg"),
            UIImage(named: "poplar beach.jpg"),
            UIImage(named: "Point-reyes.jpg"),
            UIImage(named: "Crissy-field.jpg"),
            UIImage(named: "Beautiful-cityscape-of-Sausalito.jpg"),
            UIImage(named: "Santa-Cruz-Beach-Boardwalk.jpg"),
            UIImage(named: "sausalito.jpg")
            
            ].compactMap({ $0 })
        imageView.image = images.randomElement()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        //imageView.image = nil
    }
}
