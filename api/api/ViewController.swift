//
//  ViewController.swift
//  api
//
//  Created by Hannah on 10/8/2567 BE.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel : UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var deviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        AF.request("https://dl.dropboxusercontent.com/s/u6oc4tionx16w41/profile.json").responseDecodable(of: Profile.self) { response in
            switch response.result {
            case .success(let value):
                self.nameLabel.text = value.firstname
                self.surnameLabel.text = value.lastname
                self.ageLabel.text = "\(value.age)"
                if value.gender == "m" {
                    self.genderLabel.text = "Male"
                } else  {
                    self.genderLabel.text = "Female"
                }
                var deviceString = ""
                value.devices.forEach { device in
                    deviceString += "\(device.type) \(device.model)\n"
                }
                self.deviceLabel.text = deviceString
            case .failure(let error):
                print("Error \(error)")
            }
        }
    }


}

