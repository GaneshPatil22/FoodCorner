//
//  DishPotraitCollectionViewCell.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 28/05/22.
//

import UIKit

class DishPotraitCollectionViewCell: UICollectionViewCell {
    static let identifier = "DishPotraitCollectionViewCell"

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    func setUp(model: DishModel) {
        titleLbl.text = model.name
        caloriesLbl.text = model.formatedCaloris
        descLbl.text = model.description
        dishImageView.kf.setImage(with: model.image?.asUrl)
    }
}
