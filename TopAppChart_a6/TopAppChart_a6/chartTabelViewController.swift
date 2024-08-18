//
//  chartTabelViewController.swift
//  TopAppChart_a6
//
//  Created by Hannah on 12/7/2567 BE.
//

import UIKit

class chartTabelViewController: UIViewController {
    
    @IBOutlet weak var tableVIew:UITableView!
    var contacts = topTenApps

    override func viewDidLoad() {
        super.viewDidLoad()
        tableVIew.dataSource = self
        tableVIew.delegate = self
    }

}
extension chartTabelViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactCell {
            cell.set(contact: contacts[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        if let vc = storyboard?.instantiateViewController(identifier: "details") as? ViewController{
//            vc.contact = contacts[indexPath.row]
//            navigationController?.pushViewController(vc, animated: true)
//        }
        
        let details = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "details") as! DetailsViewController
        details.contact = contacts[indexPath.row]
        navigationController?.pushViewController(details, animated: true)
    }

    
    
}
