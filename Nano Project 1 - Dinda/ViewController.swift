//
//  ViewController.swift
//  Nano Project 1 - Dinda
//
//  Created by Kevin ahmad on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    var todaysCofee = 0
    
    @IBOutlet weak var totalCoffee: UILabel!
    @IBOutlet weak var cupImage: UIImageView!
    @IBOutlet weak var middleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cupImage.image = UIImage(named: "Single Cup")
        middleLabel.text = "It’s okay to drink a cup of coffee to start you day!"
        totalCoffee.text = "total coffee: \(String(todaysCofee)) delete later"
        // Do any additional setup after loading the view.
    }

    @IBAction func plusButtonClicked(_ sender: Any) {
        
        todaysCofee += 1
        totalCoffee.text = "total coffee: \(String(todaysCofee)) delete later"
        
        if todaysCofee > 0 {
            cupImage.image = UIImage(named: "Double Cup")
            middleLabel.text = "2 Cups should be enough, have a rough day?"
        }
        
    }
    
}

