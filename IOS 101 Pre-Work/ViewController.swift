//
//  ViewController.swift
//  IOS 101 Pre-Work
//
//  Created by Natalie Gallo on 8/2/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ariesImg.isHidden = true
        ariesDescription.isHidden = true
    }

    @IBOutlet weak var schoolName: UILabel!
    @IBOutlet weak var futureCareer: UILabel!
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
            view.backgroundColor = randomColor
            
        schoolName.textColor = changeColor()
        futureCareer.textColor = changeColor()
    }
    
    @IBOutlet weak var ariesDescription: UILabel!
    @IBOutlet weak var ariesImg: UIImageView!
    @IBAction func showAries(_ sender: UIButton) {
        ariesImg.isHidden = false
        ariesDescription.isHidden = false
    }
    
    
}

