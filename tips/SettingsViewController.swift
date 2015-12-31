//
//  SettingsViewController.swift
//  tips
//
//  Created by Scott Mullen on 12/29/15.
//  Copyright © 2015 Scott Mullen. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    
    var blueMode = 0
    let switchPos = NSUserDefaults.standardUserDefaults().boolForKey("SwitchPosition")
    let tipPercentageFault = NSUserDefaults.standardUserDefaults()
    
    
    @IBOutlet weak var colorSwitch: UISwitch!
    
    @IBOutlet weak var defPerField: UITextField!
    
    @IBOutlet weak var defTip: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool){
        super.viewDidAppear(animated)
        
        if(switchPos == true){
            colorSwitch.setOn(true, animated: false)
        }
        else if(switchPos == false){
            colorSwitch.setOn(false, animated: false)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func finishEdit(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
