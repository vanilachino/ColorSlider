//
//  ViewController.swift
//  ColorSlider
//
//  Created by John on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateLabel(for: redSlider)
        updateLabel(for: greenSlider)
        updateLabel(for: blueSlider)
    
        backgroundView.layer.cornerRadius = 15
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        backgroundView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        
        updateLabel(for: sender)
    }
    
    private func updateLabel(for slider: UISlider) {
        
        var labelForUpdate: UILabel
        
        switch slider.tag {
        case 1:
            labelForUpdate = greenLabel
        case 2:
            labelForUpdate = blueLabel
        default:
            labelForUpdate = redLabel
        }
        
        labelForUpdate.text = String(format: "%.2f", slider.value)
    }
}
