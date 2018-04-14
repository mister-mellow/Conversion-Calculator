//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Eric Rachell on 4/13/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
///////////Custom Struct Created Here ///////
    struct conversionFactor{
        var label = ""
        var inputUnit = ""
        var outputUnit = ""
    }
//////////////////////////////////////////////
    
    
    var convertDefaults = [conversionFactor]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        convertDefaults = [
            conversionFactor(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi"),
            conversionFactor(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
            conversionFactor(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"),
            conversionFactor(label: "Celcius to Fahrenheit", inputUnit: "°C", outputUnit: "°F")
        ]
        inputDisplay.text = convertDefaults[3].inputUnit
        outputDisplay.text = convertDefaults[3].outputUnit
        inputDisplay.textAlignment = NSTextAlignment.right
        outputDisplay.textAlignment = NSTextAlignment.right
        

    }

    
    @IBAction func converterPressed(_ sender: UIButton) {
        let conversionModal = UIAlertController( title: "Choose a Conversion Factor", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        /////////////////////////////////Loop through choices here.////////////////////////
        for choices in convertDefaults
        {
            conversionModal.addAction(UIAlertAction( title: choices.label, style: UIAlertActionStyle.default, handler: {
                (alertAction) -> Void in

                self.inputDisplay.textAlignment = NSTextAlignment.right
                self.outputDisplay.textAlignment = NSTextAlignment.right
                self.inputDisplay.text = choices.inputUnit
                self.outputDisplay.text = choices.outputUnit
            }))
        }
    self.present(conversionModal, animated:false,  completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    

    

}
