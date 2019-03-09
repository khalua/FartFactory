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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do {
            if let fart1AudioPath = Bundle.main.path(forResource: "fart1", ofType: "wav")  {
                let urlFart1 = URL(fileURLWithPath: fart1AudioPath)
                fart1AudioPlayer = try AVAudioPlayer(contentsOf: urlFart1)
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
        }
        
        
    }
    
    @IBAction func playFart1() {
        fart1AudioPlayer?.play()
        print("fart1 pressed")
    }

}

