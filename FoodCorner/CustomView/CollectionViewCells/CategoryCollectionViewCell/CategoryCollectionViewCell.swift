//
//  CategoryCollectionViewCell.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 12/05/22.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!

    func setUp(catgory: DishCategoryModel ) {
        categoryLabel.text = catgory.name
        categoryImageView.kf.setImage(with: catgory.image?.asUrl)
    }
}
