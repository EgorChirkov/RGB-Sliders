//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Mac mini on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    private var redColorValue: CGFloat = 125
    private var greenColorValue: CGFloat = 125
    private var blueColorValue: CGFloat = 125
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redSlider.value = Float(redColorValue)
        greenSlider.value = Float(greenColorValue)
        blueSlider.value = Float(blueColorValue)
        
        refreshViewColor()
        
    }
    
    @IBAction func valueChangedRedSlider(_ sender: Any) {
        
        redColorValue = CGFloat(redSlider.value)
        refreshViewColor()
    }
    
    @IBAction func valueChangedGreenSlider(_ sender: Any) {
        
        greenColorValue = CGFloat(greenSlider.value)
        refreshViewColor()
    }
    
    @IBAction func valueChangedBlueSlider(_ sender: Any) {
        
        blueColorValue = CGFloat(blueSlider.value)
        refreshViewColor()
    }
    
    private func refreshViewColor(){
        
        colorView.backgroundColor = UIColor(red: redColorValue/255, green: greenColorValue/255, blue: blueColorValue/255, alpha: 1)
        
        labelRed.text = String(format:"Red: \(Int(redSlider.value))")
        labelGreen.text = String(format:"Green: \(Int(greenSlider.value))")
        labelBlue.text = String(format:"Blue: \(Int(blueSlider.value))")
        
    }
    
    
}

