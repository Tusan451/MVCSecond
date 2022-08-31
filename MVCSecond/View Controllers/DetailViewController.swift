//
//  DetailViewController.swift
//  MVCSecond
//
//  Created by Olegio on 30.08.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var restaurantDetailImage: UIImageView!
    @IBOutlet var restaurantDetailName: UILabel!
    @IBOutlet var restaurantDetailRating: UILabel!
    @IBOutlet var restaurantDetailCost: UILabel!
    @IBOutlet var restaurantDetailAddress: UILabel!
    @IBOutlet var restaurantDetailInfo: UILabel!
    
    var restaurant: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantDetailImage.image = restaurant.image
        restaurantDetailName.text = restaurant.name
        restaurantDetailRating.text = restaurant.rating
        restaurantDetailCost.text = restaurant.cost
        restaurantDetailAddress.text = restaurant.address
        restaurantDetailInfo.text = restaurant.info
    }
}
