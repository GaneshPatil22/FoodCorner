//
//  DishLandscapeCollectionVIewCell.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 28/05/22.
//

import UIKit

class DishLandscapeCollectionVIewCell: UICollectionViewCell {
    static let identifier = "DishLandscapeCollectionVIewCell"

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!

    func setUp(model: DishModel) {
        titleLbl.text = model.name
        caloriesLbl.text = model.formatedCaloris
        descLbl.text = model.description
        dishImageView.kf.setImage(with: model.image?.asUrl)
    }
}
