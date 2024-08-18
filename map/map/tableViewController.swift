//
//  tableViewController.swift
//  map
//
//  Created by Hannah on 17/8/2567 BE.
//

import UIKit

class tableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var contacts: [placeInfo] = []
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate=self
        super.viewDidLoad()
        readjson()
    }
    func readjson(){

        guard let url = Bundle.main.url(forResource: "abac_location", withExtension: "json") else {
                   print("JSON file not found")
                   return
               }
                do {
                   let data = try Data(contentsOf: url)
                   let decoder = JSONDecoder()
                   let decoded = try decoder.decode(places.self, from: data)
                   contacts = decoded.Places
                    tableView.reloadData()
               } catch {
                   print("Error \(error)")
               }

    }

}
extension tableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "detailsTableViewCell", for: indexPath) as? detailsTableViewCell{
            cell.set(information: contacts[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300// or any specific height you want
    }

    
    
}
