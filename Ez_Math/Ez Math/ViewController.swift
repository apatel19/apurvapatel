//
//  ViewController.swift
//  Ez Math
//
//  Created by Apurva Patel on 3/8/17.
//  Copyright © 2017 Apurva Patel. All rights reserved.
//

import UIKit
import AVFoundation


var inTimeBeginner = Int ()
var inTimeModerate = Int ()
var inTimeExpert = Int ()

var threeMinBeginner = Int ()
var threeMinModerate = Int ()
var threeMinExpert = Int ()

var inTime1 = Int ()
var inTime2 = Int ()
var inTime3 = Int ()

var three1 = Int ()
var three2 = Int ()
var three3 = Int ()

//Global FUNCTIONS

var player: AVAudioPlayer?
var player2: AVAudioPlayer?
func playSound() {
    let url = Bundle.main.url(forResource: "buttonPlay1", withExtension: "mp3")!
    
    do {
        player = try AVAudioPlayer(contentsOf: url)
        guard let player = player else { return }
        
        player.prepareToPlay()
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func inGame() {
    let OPL = Bundle.main.url(forResource: "inGame2", withExtension: "mp3")!
    
    do {
        player2 = try AVAudioPlayer(contentsOf: OPL)
        guard let player2 = player2 else { return }
        
        player2.prepareToPlay()
        player2.play()
    } catch let error {
        print(error.localizedDescription)
    }
}


class ViewController: UIViewController {
    
    var goBackHome = String ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let HighScoreThreeMinBegin = UserDefaults.standard
        if (HighScoreThreeMinBegin.value(forKey: "threeMinBeginner") != nil) {
            threeMinBeginner = HighScoreThreeMinBegin.value(forKey: "threeMinBeginner") as! Int
            three1 = threeMinBeginner
        }
        let HighScoreThreeMinModerate = UserDefaults.standard
        if (HighScoreThreeMinModerate.value(forKey: "threeMinModerate") != nil) {
            threeMinModerate = HighScoreThreeMinModerate.value(forKey: "threeMinModerate") as! Int
            three2 = threeMinModerate
        }
        let HighScoreThreeMinExpert = UserDefaults.standard
        if (HighScoreThreeMinExpert.value(forKey: "threeMinExpert") != nil) {
            threeMinExpert = HighScoreThreeMinExpert.value(forKey: "threeMinExpert") as! Int
            three3 = threeMinExpert
        }        
        
        let HighScoreInTimeBegin = UserDefaults.standard
        if (HighScoreInTimeBegin.value(forKey: "InTimeBeginner") != nil) {
            inTimeBeginner = HighScoreInTimeBegin.value(forKey: "InTimeBeginner") as! Int
            inTime1 = inTimeBeginner
        }
        let HighScoreInTimeModerate = UserDefaults.standard
        if (HighScoreInTimeModerate.value(forKey: "InTimeModerate") != nil) {
            inTimeModerate = HighScoreInTimeModerate.value(forKey: "InTimeModerate") as! Int
            inTime2 = inTimeModerate
        }
        let HighScoreInTimeExpert = UserDefaults.standard
        if (HighScoreInTimeExpert.value(forKey: "InTimeExpert") != nil) {
            inTimeExpert = HighScoreInTimeExpert.value(forKey: "InTimeExpert") as! Int
            inTime3 = inTimeExpert
        }

        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }

    //TO KEEP SCORE
    
    var HighScoreInTimeBegin = UserDefaults.standard
    var HighScoreInTimeModerate = UserDefaults.standard
    var HighScoreInTimeExpert = UserDefaults.standard
    
    var HighScoreThreeMinBegin = UserDefaults.standard
    var HighScoreThreeMinModerate = UserDefaults.standard
    var HighScoreThreeMinExpert = UserDefaults.standard
    
    
    
    @IBAction func inTimeMode(_ sender: UIButton) {
          playSound()
            }
    
    
    @IBAction func threeMinMode(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func howToPlay(_ sender: UIButton) {
        playSound()
    }
    
    @IBAction func scores(_ sender: UIButton) {
        playSound()
        
        
    }
    
    
    
}




