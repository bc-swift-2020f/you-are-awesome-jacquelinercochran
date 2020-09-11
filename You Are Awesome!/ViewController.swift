//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jackie Cochran on 8/26/20.
//  Copyright © 2020 Jackie Cochran. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 10
    var audioPlayer: AVAudioPlayer!
    let totalNumberOfSounds = 6

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    
    }
    
    func playSound(name: String){
        
       if let sound = NSDataAsset(name: name){
           do{
               try audioPlayer = AVAudioPlayer(data: sound.data)
               audioPlayer.play()
           }catch{
               print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
           }

       }else{
           print("ERROR: Could not read data from file sound0")
           }
    }
    
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int{
        var newNumber: Int
        repeat{
            newNumber = Int.random(in: 0...upperBounds)
        } while originalNumber == newNumber
        return newNumber
        
    }
           
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        var messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "When the Genius Bar Needs Help, They Call You!", "Fabulous? That's You!", "You've Got the Design Skills of Jony Ive"]

        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]

        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages - 1)
        imageView.image = UIImage(named: "image\(imageNumber)")

        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds - 1)
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        }

    }
    
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil { //if isOn is NOT true
            audioPlayer.stop()
        }
    }
    
        
}
