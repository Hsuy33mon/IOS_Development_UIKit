//
//  ViewController.swift
//  gradeList
//
//  Created by Hannah on 16/8/2567 BE.
//

import UIKit
import Alamofire
class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var contacts:[gradeInfo] = []
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        readData()
        super.viewDidLoad()
       
    }
    func readData(){
        AF.request("https://dl.dropboxusercontent.com/s/nsicnigp0xc8dxz/grades.json").responseDecodable(of: info.self){ response in
            switch response.result{
            case .success(let value):
                self.contacts = value.grades
                self.tableView.reloadData()
            case .failure(let error): print("Error \(error)")
            }
        }
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "infoTableViewCell",for: indexPath) as? infoTableViewCell{
            let contact = contacts[indexPath.row]
            cell.set(contact: contact)
            return cell
        }
        return infoTableViewCell()
    }
    
    
}

