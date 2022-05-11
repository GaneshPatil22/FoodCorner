//
//  OnboardingCollectionViewCell.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 11/05/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var slideImageVIew: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    func setUpView(model: OnboardingSlideModel) {
        slideImageVIew.image = model.image
        titleLabel.text = model.title
        descriptionLabel.text = model.description
    }
    
    
}
