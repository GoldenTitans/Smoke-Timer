//
//  ViewController.swift
//  Smoke Timer
//
//  Created by Alex on 9/25/17.
//  Copyright © 2017 Golden&Titan. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    @IBOutlet var Cigtxt: UILabel!
    @IBAction func CigCount(_ sender: UIStepper) {
        Cigtxt.text = String(sender.value)
    }
    
    @IBOutlet weak var TimePicker: UIDatePicker!
    @IBOutlet weak var Timetxt: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        
        // Minimum Date
        let formatter = DateFormatter()
        
        //Show Current Date
        formatter.dateFormat = "HH:mm"
        Timetxt.text = "They must last until:\n\(formatter.string(from: TimePicker.date))"
        TimePicker.minimumDate = TimePicker.date
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func timeSelectedFromTimePicker(_ : AnyObject) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MMM' 'HH:mm"
        Timetxt.text = "They must last until:\n\(formatter.string(from: TimePicker.date))"
        
    }


}

