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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
