//
//  MainTableViewController.swift
//  MVCSecond
//
//  Created by Olegio on 30.08.2022.
//

import UIKit

class MainTableViewController: UITableViewController {

    let cellId = "RestaurantCell"
    let modelRestaurant = ModelRestaurant()
    var detailRestaurant: Restaurant?

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelRestaurant.restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! RestaurantTableViewCell
        let restaurant = modelRestaurant.restaurants[indexPath.row]
        
        cell.restaurantImage.image = restaurant.image
        cell.restaurantImage.layer.cornerRadius = 12
        cell.restaurantName.text = restaurant.name
        cell.restaurantRating.text = restaurant.rating
        cell.restaurantCost.text = restaurant.cost
        cell.restaurantAddress.text = restaurant.address

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goDetail" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let restaurant = modelRestaurant.restaurants[indexPath.row]
        let restaurantVC = segue.destination as! DetailViewController
        
        restaurantVC.restaurant = restaurant
    }
}
