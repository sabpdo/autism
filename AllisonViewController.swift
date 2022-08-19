//
//  ViewController.swift
//  game
//
//  Created by Allison on 8/17/22.
//

import UIKit
import AVFoundation

class AllisonViewController: UIViewController {

    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func instrumentTapped(_ sender: UIButton){
        let selectedInstrument = sender.tag
        
        switch selectedInstrument {
        case 1:
            let pathToSound = Bundle.main.path(forResource: "apple", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 2:
            let pathToSound = Bundle.main.path(forResource: "reading", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 3:
            let pathToSound = Bundle.main.path(forResource: "dog", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 4:
            let pathToSound = Bundle.main.path(forResource: "school", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 5:
            let pathToSound = Bundle.main.path(forResource: "pizza", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 6:
            let pathToSound = Bundle.main.path(forResource: "tea", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 7:
            let pathToSound = Bundle.main.path(forResource: "cat", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 8:
            let pathToSound = Bundle.main.path(forResource: "running", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 9:
            let pathToSound = Bundle.main.path(forResource: "park", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 10:
            let pathToSound = Bundle.main.path(forResource: "burger", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 11:
            let pathToSound = Bundle.main.path(forResource: "sheep", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        case 12:
            let pathToSound = Bundle.main.path(forResource: "talking", ofType:".mp3")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }catch{
                
            }
        default:
            return
        }
    }

}

