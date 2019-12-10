//
//  ViewController.swift
//  Streaks
//
//  Created by Jason Kim on 2019-11-14.
//  Copyright © 2019 Jason Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var buildAppButton: UIButton!
    @IBOutlet weak var buildAppNumber: UILabel!
    var buildAppCount:Double = 0
    let buildAppPersistantData = UserDefaults.standard
    @IBOutlet weak var buildAppStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildAppCount = buildAppPersistantData.double(forKey: "persistKey")
        buildAppNumber.text = String(buildAppCount)
        buildAppStepper.value = buildAppCount
    }
    
    
    // this function is connected to an event triggered by an object in the storyboard
    // the sender parameter is a reference to the UI element that triggered this event
    @IBAction func Stepper(_ sender: UIStepper) {
        buildAppNumber.text = String(sender.value)
        buildAppPersistantData.set(sender.value, forKey: "persistKey")
    }
    
    
    @IBAction func buildAppLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            buildAppCount = 0
            buildAppNumber.text = String(buildAppCount)
            buildAppStepper.value = buildAppCount
            buildAppPersistantData.set(buildAppCount, forKey: "persistKey")
        }
    }
    
    
    @IBAction func AddItem(_ sender: UIButton) {
        // pop-up to create a new stack view (button, label, stepper)
        // pop-up has input area for button name
        // pop-up has confirm button to add the new item to the item list stack view
    }
    
    
}

