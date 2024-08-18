//
//  ViewController.swift
//  phoneApp_A5
//
//  Created by Hannah on 10/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1:UIButton!
    @IBOutlet weak var num2:UIButton!
    @IBOutlet weak var num3:UIButton!
    @IBOutlet weak var num4:UIButton!
    @IBOutlet weak var num5:UIButton!
    @IBOutlet weak var num6:UIButton!
    @IBOutlet weak var num7:UIButton!
    @IBOutlet weak var num8:UIButton!
    @IBOutlet weak var num9:UIButton!
    @IBOutlet weak var num0:UIButton!
    @IBOutlet weak var hashtag:UIButton!
    @IBOutlet weak var star:UIButton!
    @IBOutlet weak var phone:UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var delete:UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberBtn = [num1,num2,num3,num4,num5,num6,num7,num8,num9,num0,star,phone,hashtag]
        
        numberLabel.isHidden = true
        
        for buttons in numberBtn{
            buttons?.layer.cornerRadius = 0.5 * (buttons?.bounds.size.width ?? 1)
            buttons?.clipsToBounds = true
        }
        
    }
    
    @IBAction func call(_sender:UIButton){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "hungupVc") as?
            HungupViewController{
            vc.number = numberLabel.text ?? ""
//            navigationController?.pushViewController(vc, animated: true)
            vc.modalPresentationStyle = .fullScreen
            present(vc,animated: true)
            
        }
    }
    
    @IBAction func numberTap(_ sender: UIButton){
        numberLabel.isHidden = false
        delete.isHidden = false
        if let numberValue = sender.currentTitle{
            numberLabel.text = (numberLabel.text ?? "" ) + numberValue
        }
    }
    
    @IBAction func backspace(_ sender: UIButton){
        if var num = numberLabel.text, !num.isEmpty{
            num.removeLast()
            numberLabel.text = num
            if num.isEmpty == true{
                delete.isHidden = true
            }
        }
        
    }


}

