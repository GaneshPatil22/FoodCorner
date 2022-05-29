//
//  String+Extension.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 18/05/22.
//

import Foundation

extension  String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
