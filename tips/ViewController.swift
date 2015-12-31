//
//  ViewController.swift
//  tips
//
//  Created by Scott Mullen on 12/1/15.
//  Copyright © 2015 Scott Mullen. All rights reserved.
//

import UIKit


class ViewController: UIViewController
    {
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    var switchPosition = false
    
    @IBAction func sliderValueChange(sender: AnyObject) {
        
        let currentValue = Int(tipSlider.value)
        //var percent = 100 * currentValue
        
        sliderLabel.text = "\(currentValue)%"
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Tip Calculator"
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject)
    {
        let currentVal = sliderValue()
        let temp = Double(currentVal)
        let percent = temp / 100.00
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * percent
        
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
    @IBAction func onTap(sender: AnyObject)
    {
        view.endEditing(true)
    }
    
    func sliderValue() -> Int
    {
        let value = Int(tipSlider.value)
        return value
    }
    
    
    

}

