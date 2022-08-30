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
    
    var restaurant
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
