//
//  ViewController.swift
//  Fart Factory
//
//  Created by Contreras, Anthony on 3/8/19.
//  Copyright © 2019 Orbit Networks. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var fart1AudioPlayer: AVAudioPlayer?
    var fart2AudioPlayer: AVAudioPlayer?
    var fart3AudioPlayer: AVAudioPlayer?
    var fart4AudioPlayer: AVAudioPlayer?
    var fart5AudioPlayer: AVAudioPlayer?
    var fart6AudioPlayer: AVAudioPlayer?
    var fart7AudioPlayer: AVAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do {
            if let fart1AudioPath = Bundle.main.path(forResource: "fart1", ofType: "wav")  {
                let urlFart1 = URL(fileURLWithPath: fart1AudioPath)
                fart1AudioPlayer = try AVAudioPlayer(contentsOf: urlFart1)
            }
            if let fart2AudioPath = Bundle.main.path(forResource: "fart2", ofType: "wav")  {
                let urlFart2 = URL(fileURLWithPath: fart2AudioPath)
                fart2AudioPlayer = try AVAudioPlayer(contentsOf: urlFart2)
            }
            if let fart3AudioPath = Bundle.main.path(forResource: "fart3", ofType: "wav")  {
                let urlFart3 = URL(fileURLWithPath: fart3AudioPath)
                fart3AudioPlayer = try AVAudioPlayer(contentsOf: urlFart3)
            }
            if let fart4AudioPath = Bundle.main.path(forResource: "fart4", ofType: "wav")  {
                let urlFart4 = URL(fileURLWithPath: fart4AudioPath)
                fart4AudioPlayer = try AVAudioPlayer(contentsOf: urlFart4)
            }
            if let fart5AudioPath = Bundle.main.path(forResource: "fart5", ofType: "wav")  {
                let urlFart5 = URL(fileURLWithPath: fart5AudioPath)
                fart5AudioPlayer = try AVAudioPlayer(contentsOf: urlFart5)
            }
            if let fart6AudioPath = Bundle.main.path(forResource: "fart6", ofType: "wav")  {
                let urlFart6 = URL(fileURLWithPath: fart6AudioPath)
                fart6AudioPlayer = try AVAudioPlayer(contentsOf: urlFart6)
            }
            if let fart7AudioPath = Bundle.main.path(forResource: "fart7", ofType: "wav")  {
                let urlFart7 = URL(fileURLWithPath: fart7AudioPath)
                fart7AudioPlayer = try AVAudioPlayer(contentsOf: urlFart7)
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
        }
        
        
    }
    
    @IBAction func playFart1() {
        fart1AudioPlayer?.play()
        print("fart1 pressed")
    }

    @IBAction func playFart2() {
        fart2AudioPlayer?.play()
        print("fart2 pressed")
    }

    @IBAction func playFart3() {
        fart3AudioPlayer?.play()
        print("fart3 pressed")
    }
    
    @IBAction func playFart4() {
        fart4AudioPlayer?.play()
        print("fart4 pressed")
    }
    
    @IBAction func playFart5() {
        fart5AudioPlayer?.play()
        print("fart5 pressed")
    }
    
    @IBAction func playFart6() {
        fart6AudioPlayer?.play()
        print("fart6 pressed")
    }
    
    @IBAction func playFart7() {
        fart7AudioPlayer?.play()
        print("fart7 pressed")
    }
    
}

