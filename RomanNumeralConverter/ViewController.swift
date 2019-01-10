//
//  ViewController.swift
//  RomanNumeralConverter
//
//  Created by Bartłomiej Świerad on 10/01/2019.
//  Copyright © 2019 Bartłomiej Świerad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var textField: UITextField!
    @IBOutlet var resultTextView: UITextView!
    
    let converter = Converter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultTextView.text = ""
    }

    @IBAction func segmentedControlValueChanged(_ sender: Any) {
        
    }
    
    @IBAction func textFieldChanged(_ sender: Any) {
        if textField.text != nil, let number = Int(textField.text!) {
            if converter.testInputValue(number) {
                resultTextView.text = converter.convert(number)
            } else {
                resultTextView.text = "Inappropriate value"
            }
        } else {
            resultTextView.text = "Result"
        }
    }
    
}
