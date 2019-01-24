//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Triwit Muthitakul on 24/1/2562 BE.
//  Copyright © 2562 Archawin Tirugsapun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var resulted: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        let bmi:Double = (Double(weight.text!) ?? 0) / (pow((Double(height.text!) ?? 0)/100, 2))
        resulted.text = "Your BMI is \(bmi)"
        if bmi < 18.5 {
            category.text = "Underweight"
            image.image = UIImage(named: "Underweight.png")
        }
        else if bmi < 25 {
            category.text = "Normal"
            image.image = UIImage(named: "Healthy")
        }
        else if bmi < 30 {
            category.text = "Overweight"
            image.image = UIImage(named: "Overweight.png")
        }
        else {
            category.text = "Obese!"
            image.image = UIImage(named: "Obese.png")
        }

    }
}

