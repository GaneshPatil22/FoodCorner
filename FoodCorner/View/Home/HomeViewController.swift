//
//  HomeViewController.swift
//  FoodCorner
//
//  Created by Patil, Ganesh on 11/05/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularDishesCollectionView: UICollectionView!
    @IBOutlet weak var specialDishCollectionView: UICollectionView!


    var categories: [DishCategoryModel] = [
        .init(id: "id1", name: "Indian Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Indian Dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Indian Dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Indian Dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Indian Dish 5", image: "https://picsum.photos/100/200")
    ]

    var popularDishes: [DishModel] = [
        .init(id: "id1", name: "Curri", image: "https://picsum.photos/100/200", description: "Best dish ever which i have tasted till now", calories: 130),
        .init(id: "id1", name: "Paneer fry", image: "https://picsum.photos/100/200", description: "Best dish ever which i have tasted till now", calories: 30),
        .init(id: "id1", name: "Pizza ", image: "https://picsum.photos/100/200", description: "Best dish ever which i have tasted till now", calories: 230)
    ]

    var specialDishes: [DishModel] = [
        .init(id: "id1", name: "French Fries", image: "https://picsum.photos/100/200", description: "This is my fav.", calories: 30),
        .init(id: "id1", name: "Pizza ", image: "https://picsum.photos/100/200", description: "Best dish ever which i have tasted till now", calories: 230)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Food Corner"
        setUpCollectionView()
    }


    private func setUpCollectionView() {
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        popularDishesCollectionView.delegate = self
        popularDishesCollectionView.dataSource = self
        specialDishCollectionView.delegate = self
        specialDishCollectionView.dataSource = self

        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularDishesCollectionView.register(UINib(nibName: DishPotraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPotraitCollectionViewCell.identifier)
        specialDishCollectionView.register(UINib(nibName: DishLandscapeCollectionVIewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionVIewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularDishesCollectionView:
            return popularDishes.count
        case specialDishCollectionView:
            return specialDishes.count
        default:
            return 0
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case categoryCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else { return UICollectionViewCell() }
            cell.setUp(catgory: categories[indexPath.row])
            return cell
        case popularDishesCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPotraitCollectionViewCell.identifier, for: indexPath) as? DishPotraitCollectionViewCell else { return UICollectionViewCell() }
            cell.setUp(model: popularDishes[indexPath.row])
            return cell
        case specialDishCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionVIewCell.identifier, for: indexPath) as? DishLandscapeCollectionVIewCell else { return UICollectionViewCell() }
            cell.setUp(model: popularDishes[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
    }
}
