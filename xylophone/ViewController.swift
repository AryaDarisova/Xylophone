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
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        
//        print(url)

        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
}

