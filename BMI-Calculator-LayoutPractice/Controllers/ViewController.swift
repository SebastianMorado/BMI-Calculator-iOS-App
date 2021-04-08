//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightSlider.value = 1.50
        weightSlider.value = 100
    
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let roundedHeight = Float(round(100*sender.value)/100)
        heightLabel.text = "\(roundedHeight)m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let roundedWeight = Int(sender.value)
        weightLabel.text = "\(roundedWeight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight / pow(height, 2)
        print(BMI)
    }
}

