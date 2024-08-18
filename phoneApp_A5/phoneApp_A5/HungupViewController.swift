//
//  HungupViewController.swift
//  phoneApp_A5
//
//  Created by Hannah on 10/7/2567 BE.
//

import UIKit

class HungupViewController: UIViewController {
    
    var number: String = ""
    
    @IBOutlet weak var hungupbtn:UIButton!
    @IBOutlet weak var phoneNum:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        hungupbtn.layer.cornerRadius = 0.5 * hungupbtn.bounds.size.width
        hungupbtn.clipsToBounds = true
        phoneNum.text = number
       
    }
    
    @IBAction func hungup(_sender:UIButton){
//        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
    

   

}
