//
//  ViewController.swift
//  constraints_A3
//
//  Created by Hannah on 23/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    let land_animals: [String] = ["cat","puppy","deer","elephant","fox","giraffe","leopard","lion","panda","rabbit"]
    let water_animals: [String] = ["crab","nemo fish","octopus","otter","Sea_horse","shark","squid","starfish","turtle","whale"]
    
    private func l_titles() -> String {
        let rdm_land = land_animals.randomElement()
        if let rdm_land {
            return rdm_land
        }
        return " "
    }
    
    private func w_titles() -> String {
        let rdm_water = water_animals.randomElement()
        if let rdm_water{
            return rdm_water
        }
        return " "
    }
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img1.isHidden = true
        img2.isHidden = true
        lb1.isHidden = true
        lb2.isHidden = true
    }

    @IBAction func btnclicked(_ sender: UIButton) {
        let random_land = l_titles()
        let random_water = w_titles()
        img1.isHidden = false
        img2.isHidden = false
        lb1.isHidden = false
        lb2.isHidden = false
        
        img1.image = UIImage(named: random_land)
        lb1.text = random_land
        
        img2.image = UIImage(named: random_water)
        lb2.text = random_water
    }
    
}

