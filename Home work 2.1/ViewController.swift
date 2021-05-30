//
//  ViewController.swift
//  Home work 2.1
//
//  Created by Dima Savitskiy on 28.05.21.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redNumberLabel: UILabel!
    @IBOutlet weak var greenNumberLabel: UILabel!
    @IBOutlet weak var blueNumberLabel: UILabel!
    
    

    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.tintColor = UIColor.red
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        
        greenSlider.tintColor = UIColor.green
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        
        blueSlider.tintColor = UIColor.blue
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
        
        }
        
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }

    @IBAction func redChangedSliderValue() {
        redNumberLabel.text = String(format: "%.2f", redSlider.value)
        
        changeColor()
    }
    @IBAction func greenChangedSliderValue() {
        greenNumberLabel.text = String(format: "%.2f",greenSlider.value)
        
        changeColor()
    }
    @IBAction func blueChangedSliderValue() {
        blueNumberLabel.text = String(format: "%.2f",blueSlider.value)
        
        changeColor()
    }
    
    
}

