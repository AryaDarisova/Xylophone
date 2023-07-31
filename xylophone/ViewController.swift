//
//  ViewController.swift
//  xylophone
//
//  Created by Daria Arisova on 31.07.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let sounds: [String: String] = [
            "Каждый": "C",
            "Охотник": "D",
            "Желает": "E",
            "Знать": "F",
            "Где": "G",
            "Сидит": "A",
            "Фазан": "B"
        ]
        
        playSound(resourceSound: sounds[(sender.titleLabel?.text)!]!)
        
        sender.layer.opacity = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(200)) {
            sender.layer.opacity = 1
        }
    }
    
    func playSound(resourceSound: String) {
        let url = Bundle.main.url(forResource: resourceSound, withExtension: "wav")
        
//        print(url)

        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
}

