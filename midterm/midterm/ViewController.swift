//
//  ViewController.swift
//  midterm
//
//  Created by Hannah on 10/8/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var restaurants: [Restaurant] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        readData()
    }

    func readData(){
        guard let url = Bundle.main.url(forResource: "Restaurants", withExtension: "json") else {return}
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let decoded = try decoder.decode(RestaurantModel.self, from: data)
            restaurants = decoded.items
            tableView.reloadData()
        } catch {
            print("Error \(error)")
        }
    }
}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as? RestaurantCell{
            cell.set(restaurant: restaurants[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let vc = storyboard?.instantiateViewController(withIdentifier: "RestaurantDetail") as? RestaurantDetailViewController{
            vc.restaurant = restaurants[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


