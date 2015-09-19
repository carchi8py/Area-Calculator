//
//  ViewController.swift
//  Area Calculator
//
//  Created by Chris Archibald on 9/18/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        println("Button pressed")
        
        if let width = widthTextField.text.toInt() {
            if let height = heightTextField.text.toInt() {
                println("Valid Input! \(width) x \(height)")
                
                var area = width * height
                
                outputLabel.text = "\(area)"
            }
        }
    }

}

