//
//  CardCell.swift
//  RecipeApp
//
//  Created by Nakul Tirumalai on 3/20/21.
//  Copyright © 2021 AnupamaKurudi. All rights reserved.
//

import UIKit

@IBDesignable class CardCell: UIView {
    
    @IBInspectable var cornerradius: CGFloat = 5
    @IBInspectable var shadowOffsetWidth: CGFloat = 0
    @IBInspectable var shadowOffsetHeight: CGFloat = 6
    @IBInspectable var shadowColor: UIColor = UIColor.lightGray
    @IBInspectable var shadowOpacity: CGFloat = 1
    
   
    override func layoutSubviews() {
        layer.cornerRadius = cornerradius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerradius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = Float(shadowOpacity)
    }
}
