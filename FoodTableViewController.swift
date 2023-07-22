//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Sanjay Krishna on 11/01/23.
//

import UIKit

class FoodTableViewController: UITableViewController {

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
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        // Configure the cell...
        var b1 = meals[indexPath.section]
        var f1 = b1.food[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = f1.name
        content.secondaryText = f1.description
        cell.contentConfiguration = content
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    var meals : [Meal] {
        var breakfast: Meal = Meal(name: "BreakFast", food: [Food(name: "Idli", description: "Soft bubbly cake"),Food(name: "Chutney", description: "Coconut Chutney"),Food(name: "Sambar", description: "A perfect mix of liquid and solid ingredients")])
        var lunch: Meal = Meal(name: "Lunch", food: [Food(name: "Rice", description: "normal rice! plenty of carbos!"),Food(name: "Sambar", description: "Mixed with rice"),Food(name: "Rasam", description: "Mixed with rice")])
        var dinner: Meal = Meal(name: "Dinner", food: [Food(name: "Chapati", description: "Bread of Indian type"),Food(name: "Paneer Butter Masala", description: "Best Side dish for Indian Breads"),Food(name: "Curd", description: "Thick or diluted for eating after meals")])
        return [breakfast,lunch,dinner]
    }
       
}
