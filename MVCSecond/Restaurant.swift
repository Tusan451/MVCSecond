//
//  Restaurant.swift
//  MVCSecond
//
//  Created by Olegio on 30.08.2022.
//

import Foundation
import UIKit

class Restaurant: NSObject {
    var name: String
    var rating: String
    var cost: String
    var address: String
    var image: UIImage
    var info: String
    
    init(name: String, rating: String, cost: String, address: String, image: UIImage, info: String) {
        self.name = name
        self.rating = rating
        self.cost = cost
        self.address = address
        self.image = image
        self.info = info
    }
}
