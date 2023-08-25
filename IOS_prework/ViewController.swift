//
//  ViewController.swift
//  IOS_prework
//
//  Created by Lesly Williams on 8/22/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }

    
    @IBOutlet weak var myLabels1: UILabel!
    @IBOutlet weak var myLabels2: UILabel!
    @IBOutlet weak var myLabels3: UILabel!
    
    @IBAction func changeLabelColor(_ sender: UIButton) {
        let randomColor = changeColor()
        
        let myLables = [ myLabels1, myLabels2, myLabels3]
        
        for label in myLables{
            label?.textColor = randomColor
        }
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
}
