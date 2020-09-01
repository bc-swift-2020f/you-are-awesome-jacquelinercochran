//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jackie Cochran on 8/26/20.
//  Copyright © 2020 Jackie Cochran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍🏻viewDidLoad has run!")
        messageLabel.text = "Fabulous You Are"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😃The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
        
    }
    
}

