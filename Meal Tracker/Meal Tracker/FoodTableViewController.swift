//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Benjamin Ethan Levy on 4/22/22.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] = [
        Meal(name: "Breakfast", food: [
            Food(name: "Banana", description: "Green-ish whole banana."),
            Food(name: "Toast", description: "Buttered white toast, well-toasted."),
            Food(name: "Yogurt", description: "Strawberry-flavored greek yogurt.")]),
        Meal(name: "Lunch", food: [
            Food(name: "Turkey & Cheese Sandwich", description: "Sandwich with sliced turkey & cheddar cheese."),
            Food(name: "Apple Slices", description: "Four slices of an apple, no skin"),
            Food(name: "Pistachios", description: "Bag of pistachios.")]),
        Meal(name: "Dinner", food: [
            Food(name: "Steak", description: "Well-done steak."),
            Food(name: "Cesar Salad", description: "Astonishingly-cesared salad."),
            Food(name: "Pizza", description: "An extra-large whole pizza, by request of Brian.")])]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
}
