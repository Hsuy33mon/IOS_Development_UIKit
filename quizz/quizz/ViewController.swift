//
//  ViewController.swift
//  quizz
//
//  Created by Hannah on 20/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    let titles : [String] = ["crab","shark","octopus","otter","turtle","whale"]
    private func randomtitle() -> String {
        let randomImage = titles.randomElement()
        if let randomTitle = randomImage{
            return randomTitle
        }
        return ""
    }
    
    @IBOutlet weak var rbtn: UIButton!
    @IBOutlet weak var rimage: UIImageView!
    @IBOutlet weak var rlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rlabel.isHidden = true
        rimage.isHidden = true
            }
    
    @IBAction func btnclicked(_ sender: UIButton) {
        let randomitem = randomtitle()
        rimage.isHidden = false
        rimage.image = UIImage(named: randomitem)
        rlabel.isHidden = false
        rlabel.text = randomitem
    }
    
        
}

