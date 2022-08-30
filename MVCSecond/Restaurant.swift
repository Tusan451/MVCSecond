//
//  Restaurant.swift
//  MVCSecond
//
//  Created by Olegio on 30.08.2022.
//

import Foundation
import UIKit

class Restaurant: NSObject {
    let name: String
    let rating: String
    let cost: String
    let address: String
    let image: UIImage
    let info: String
    
    init(name: String, rating: String, cost: String, address: String, image: UIImage, info: String) {
        self.name = name
        self.rating = rating
        self.cost = cost
        self.address = address
        self.image = image
        self.info = info
    }
}
