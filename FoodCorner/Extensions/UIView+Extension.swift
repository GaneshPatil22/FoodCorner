//
//  UIView+Extension.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 11/05/22.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
