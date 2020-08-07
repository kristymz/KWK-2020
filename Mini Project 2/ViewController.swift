//
//  ViewController.swift
//  Mini Project 2
//
//  Created by kristy awesome pants martinez on 8/6/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var TextToChange: UILabel!
    
    @IBAction func FirstOption(_ sender: Any) {
        TextToChange.text = "Wow, why would you even think that"
    }
    
    
    @IBAction func SecondOption(_ sender: Any) {
        TextToChange.text = "OMG you know it <3"
        }
    
    @IBAction func thirdAction(_ sender: Any) {
        TextToChange.text = "Cannot believe you don't know!"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

