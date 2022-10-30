//
//  SetBackColor.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 30/10/22.
//

import UIKit

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 84/255,
            green: 181/255,
            blue: 222/255,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 153/255,
            green: 128/255,
            blue: 242/255,
            alpha: 1
            
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
