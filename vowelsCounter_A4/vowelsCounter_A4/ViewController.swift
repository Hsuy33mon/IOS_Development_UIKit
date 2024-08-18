//
//  ViewController.swift
//  vowelsCounter_A4
//
//  Created by Hannah on 29/6/2567 BE.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var word: UITextField!
    
    @IBOutlet weak var aCount: UILabel!
    @IBOutlet weak var eCount: UILabel!
    @IBOutlet weak var iCount: UILabel!
    @IBOutlet weak var oCount: UILabel!
    @IBOutlet weak var uCount: UILabel!
    
    @IBOutlet weak var aBackground: UIView!
    @IBOutlet weak var eBackground: UIView!
    @IBOutlet weak var iBackground: UIView!
    @IBOutlet weak var oBackground: UIView!
    @IBOutlet weak var uBackground: UIView!
    
    var a = 0
    var e = 0
    var i = 0
    var o = 0
    var u = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        word.addTarget(self, action: #selector(counter), for: .editingChanged)
        
    }
    
    @objc func counter(){
        let text = word.text
        a = 0
        e=0
        i=0
        o=0
        u=0
        aBackground.backgroundColor = .systemGray4
        eBackground.backgroundColor = .systemGray4
        iBackground.backgroundColor = .systemGray4
        oBackground.backgroundColor = .systemGray4
        uBackground.backgroundColor = .systemGray4
        for ch in text!.lowercased(){
            switch ch{
            case "a": 
                a+=1
                aBackground.backgroundColor = .green
            case "e":
                e+=1
                eBackground.backgroundColor = .green
            case "i":
                i+=1
                iBackground.backgroundColor = .green
            case "o":
                o+=1
                oBackground.backgroundColor = .green
            case "u":
                u+=1
                uBackground.backgroundColor = .green
            default:break
            }
        }
        aCount.text = "x\(String(a))"
        eCount.text = "x\(String(e))"
        iCount.text = "x\(String(i))"
        oCount.text = "x\(String(o))"
        uCount.text = "x\(String(u))"

    }


}

