//
//  ViewController.swift
//  Streaks
//
//  Created by Jason Kim on 2019-11-14.
//  Copyright © 2019 Jason Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buildAppLabel: UILabel!
    var buildAppCount:Double = 0
    let buildAppPersistantData = UserDefaults.standard
    
    @IBOutlet weak var buildAppStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildAppCount = buildAppPersistantData.double(forKey: "persistKey")
        buildAppLabel.text = String(buildAppCount)
        buildAppStepper.value = buildAppCount
        
        let longPressBuildApp = UILongPressGestureRecognizer(target: buildAppLabel, action:#selector(buildAppLongPress(press:)) )
        longPressBuildApp.minimumPressDuration = 2.0
        buildAppLabel.addGestureRecognizer(longPressBuildApp)
    }
    
    
    // this function is connected to an event triggered by an object in the storyboard
    // the sender parameter is a reference to the button that triggered this event
    
//    @IBAction func buildAppButton(_ sender: UILongPressGestureRecognizer) {
//        if sender.state == .began {
//            buildAppCount = 0
//            buildAppLabel.text = String(buildAppCount)
//            buildAppStepper.value = buildAppCount
//            buildAppPersistantData.set(buildAppCount, forKey: "persistKey")
//        }
//    }
    
    
    @objc func buildAppLongPress(press: UILongPressGestureRecognizer) {
        if press.state == .began {
            buildAppCount = 0
            buildAppLabel.text = String(buildAppCount)
            buildAppStepper.value = buildAppCount
            buildAppPersistantData.set(buildAppCount, forKey: "persistKey")
        }
    }
    
    
    @IBAction func Stepper(_ sender: UIStepper) {
        buildAppLabel.text = String(sender.value)
        buildAppPersistantData.set(sender.value, forKey: "persistKey")
    }
}

