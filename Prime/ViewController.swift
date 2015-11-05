//
//  ViewController.swift
//  Prime
//
//  Created by Akila Balasubramanian on 11/4/15.
//  Copyright © 2015 Fun App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func showResult(sender: AnyObject) {
        
        let num = Int(number.text!)
        var result = "Enter a valid number."
        
        if (num != nil) {
            
          result = "\(num!) is prime!"
          var count = 2
    
          while (count < num) {
              if (num! % count == 0) {
                  result = "\(num!) is not prime!"
              }
              count++
          }
        }
        
        resultLabel.text = result
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

