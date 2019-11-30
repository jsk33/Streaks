//
//  ViewController.swift
//  Streaks
//
//  Created by Jason Kim on 2019-11-14.
//  Copyright © 2019 Jason Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // hooked up the image to this property in the view controller
    // we now have a reference to the image object
    // we can call methods on it, configure its properties, etc. inside the view controller here
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    // this function is connected to an event triggered by an object in the storyboard
    // the sender parameter is a reference to the button that triggered this event
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
    }
    
}

