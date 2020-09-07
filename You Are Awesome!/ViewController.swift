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
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    var messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "When the Genius Bar Needs Help, They Call You!", "Fabulous? That's You!", "You've Got the Design Skills of Jony Ive"]
    let totalNumberOfImages = 9

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    
   
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let imageNumber = Int.random(in: 0...totalNumberOfImages)
        print(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        
        
        let messageNumber = Int.random(in: 0...messages.count - 1)
        print(messageNumber)
        messageLabel.text = messages[messageNumber]
        
        
        
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
//
//
//        if messageLabel.text == awesomeMessage{
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == greatMessage{
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else{
//            messageLabel.text = awesomeMessage
//            imageView.image= UIImage(named: "image0")
//        }
            
    }
        
}

