//
//  DishModel.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 28/05/22.
//

import Foundation

struct DishModel {
    let id, name, image, description: String?
    let calories: Int?

    var formatedCaloris: String {
        return "\(calories ?? 0) calories"
    }
}
