//
//  viewThree.swift
//  Ez Math
//
//  Created by Apurva Patel on 3/8/17.
//  Copyright © 2017 Apurva Patel. All rights reserved.
//

import Foundation
import UIKit
import Canvas
import AVFoundation

class viewThree : UIViewController {
    
    //HighScore saver 
    
    var HighScoreInTimeBegin = UserDefaults.standard
    var HighScoreInTimeModerate = UserDefaults.standard
    var HighScoreInTimeExpert = UserDefaults.standard
    
    //Adding Timer  and SCORES
    
    var timer:Timer?
    var scoreThree:Int = 00
    var counter = Int ()
    var scoreViewThree: Int = 00
    func timeFunc () {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func updateCounter () {
        
        if (counter > 0) {
            counter -= 1
            timeDigits.text = "\(counter)"
        }
        else {
            timer?.invalidate()
            restartGame()
        }
    }
    
    var finalScore = Int ()
    func finalScore (finalScore: Int) {
        
        if (levelName == "1") {
            if (inTimeBeginner <= finalScore) {
                inTimeBeginner = finalScore
                HighScoreInTimeBegin.set(inTimeBeginner, forKey: "InTimeBeginner")
                HighScoreInTimeBegin.synchronize()
            }
            else { //Do nothing
            }
        }
        else if (levelName == "2") {
            if (inTimeModerate <= finalScore) {
                inTimeModerate = finalScore
                HighScoreInTimeModerate.set(inTimeModerate, forKey: "InTimeModerate")
                HighScoreInTimeModerate.synchronize()
            }
            else { //Do nothing
            }
        }
        else if (levelName == "3") {
            if (inTimeExpert <= finalScore) {
                inTimeExpert = finalScore
                HighScoreInTimeExpert.set(inTimeExpert, forKey: "InTimeExpert")
                HighScoreInTimeExpert.synchronize()
            }
            else { //Do nothing
            }
        }
        
    }
    
    func settingTimerBack () {
        if (levelName == "1") {
            counter = 8
        }
        else if (levelName == "2") {
            counter = 12
        }
        else if (levelName == "3") {
            counter = 15
        }
    }
    
    var dataLabelText = String()
    
    var nameOfMode = String() //Used in view Did load
    var levelName = String() //Used in view Did load
    
    override func viewDidLoad() {
        
        levelName = dataLabelText
        
        yesOutlet.isHidden = true
        noOutlet.isHidden = true
        
        pick1Outlet.isHidden = true
        pick2Outlet.isHidden = true
        pick3Outlet.isHidden = true
        
        minMax1.isHidden = true
        minMax2.isHidden = true
        minMax3.isHidden = true
        minMax4.isHidden = true
        minMax5.isHidden = true
        minMax6.isHidden = true
        minMaxInstruction.isHidden = true
        
        starImage.isHidden = true
        scoreNumber.isHidden = true
        
        timeImage.isHidden = true
        timeDigits.isHidden = true
        
        viewThreeBackOutlet.isHidden = false
        viewThreeHomeOutlet.isHidden = false
        
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
        
        //scoreViewThree = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //  ************************************************* //
    //                                                    //
    //  ALL THE VARIABLES I USED GLOBALLY FOR VIEW THREE  //
    //                                                    //
    //  ************************************************* //
    
    var trueAnswer = Int () // Used in definition of function 
    var rightOrWrong = Int () // Used to check once button pressed
    
    var wrongAnswer1 = Int () //Used in pick functions
    var wrongAnswer2 = Int () //Used in pick functions
    
    var pickButton = String () // Used to check which pick button pressed
    
    //MinMax
    var num1 = Int ()
    var num2 = Int ()
    var num3 = Int ()
    var num4 = Int ()
    var num5 = Int ()
    var num6 = Int ()
    var TrueMinMaxAnswer = [Int] ()
    var VerifyMinMax = [Int] ()
    var clickedButtons = Int ()
    
    //MinMax Functions
    ////////******For Min Max numbers 1 to 6 ******/////////
    
    func number1Func () -> Int {
        let n1: Int = Int (arc4random_uniform(5000))
        return n1
    }
    
    func number2Func () -> Int {
        let n2: Int = Int (arc4random_uniform(5000))
        return n2
    }
    
    func number3Func () -> Int {
        let n3: Int = Int (arc4random_uniform(5000))
        return n3
    }
    
    func number4Func () -> Int {
        let n4: Int = Int (arc4random_uniform(5000))
        return n4
    }
    
    func number5Func () -> Int {
        let n5: Int = Int (arc4random_uniform(5000))
        return n5
    }
    func number6Func () -> Int {
        let n6: Int = Int (arc4random_uniform(5000))
        return n6
    }
    //  ******* //
    //          //
    //  OUTLETS //
    //          //
    //  ******* //
    
    
    @IBOutlet weak var viewThreeHomeOutlet: UIButton!
    @IBOutlet weak var homeButtonView: UIView!
    @IBOutlet weak var viewThreeBackOutlet: UIButton!
    @IBOutlet weak var backButtonView: UIView!
    
    @IBOutlet weak var yesOutlet: UIButton!
    @IBOutlet weak var noOutlet: UIButton!
    
   
    @IBOutlet weak var pick1Outlet: UIButton!
    @IBOutlet weak var pick2Outlet: UIButton!
    @IBOutlet weak var pick3Outlet: UIButton!
    
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var startButtonView: UIView!
    
    
    @IBOutlet weak var minMaxInstruction: UILabel!
    @IBOutlet weak var minMax1: UIButton!
    @IBOutlet weak var minMax2: UIButton!
    @IBOutlet weak var minMax3: UIButton!
    @IBOutlet weak var minMax4: UIButton!
    @IBOutlet weak var minMax5: UIButton!
    @IBOutlet weak var minMax6: UIButton!
    
    @IBOutlet weak var equationData: UILabel!
    
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var scoreNumber: UILabel!
    
    @IBOutlet weak var timeImage: UIImageView!
    @IBOutlet weak var timeDigits: UILabel!
    
    
    //  ********** //
    //             //
    // END OUTLETS //
    //             //
    //  ********** //
    
    
    
    
    
    //  *********************  //
    //                         //
    //      MAIN EQUATION      //
    //                         //
    //  *********************  //

    // RANDOMNUMBER1 and RANDOMNUMBER2 Functions
    
    func randomNumberFunc1 () -> Int{
        let randomNumber1: Int = Int(arc4random_uniform(5000))
        return randomNumber1
    }
    func randomNumberFunc2 () -> Int {
        let randomNumber2: Int = Int(arc4random_uniform(5000))
        return randomNumber2
    }

    var randomNumber1 = Int ()
    var randomNumber2 = Int ()
    // var randomNumber3 = Int ()
    
    func mainEquation () {

         randomNumber1 = randomNumberFunc1 ()
         randomNumber2 = randomNumberFunc2()
        //randomNumber3 = randomNumberFunc1() + 1
        
        if (levelName == "1") {
            settingTimerBack()
            let pickRandomOperator = (arc4random() % 7)+1
            print ("Random Operator is - \(pickRandomOperator)")
            
            if (pickRandomOperator <= 3) {
                yesOutlet.isHidden = false
                noOutlet.isHidden = false
                
                pick1Outlet.isHidden = true
                pick2Outlet.isHidden = true
                pick3Outlet.isHidden = true
                
                equationData.isHidden = false
                
                minMax1.isHidden = true
                minMax2.isHidden = true
                minMax3.isHidden = true
                minMax4.isHidden = true
                minMax5.isHidden = true
                minMax6.isHidden = true
                minMaxInstruction.isHidden = true
            }
            else if (pickRandomOperator >= 4 && pickRandomOperator <= 6) {
                yesOutlet.isHidden = true
                noOutlet.isHidden = true
                equationData.isHidden = false
                pick1Outlet.isHidden = false
                pick2Outlet.isHidden = false
                pick3Outlet.isHidden = false
                
                minMax1.isHidden = true
                minMax2.isHidden = true
                minMax3.isHidden = true
                minMax4.isHidden = true
                minMax5.isHidden = true
                minMax6.isHidden = true
                minMaxInstruction.isHidden = true
                
            }
            else if (pickRandomOperator >= 7) {
                
                yesOutlet.isHidden = true
                noOutlet.isHidden = true
                
                print ("Hey Printed")
                
                pick1Outlet.isHidden = true
                pick2Outlet.isHidden = true
                pick3Outlet.isHidden = true
                equationData.isHidden = true
               
                minMaxInstruction.isHidden = false
                minMaxInstruction.text = "Select from smallest to Highest"
                minMax4.isHidden = false
                minMax5.isHidden = false
                minMax6.isHidden = false
            }
            
            switch (pickRandomOperator) {
            case 1:
                //Addition -> answer Through Yes No
                randomNumber1 = randomNumber1 % 11  //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 11  //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                
                
                addition(randomNumber1: randomNumber1,randomNumber2: randomNumber2)
                
                break
            case 2:
                //Subtraction -> answer Through Yes No
                randomNumber1 = randomNumber1 % 11  //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 11  //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                subtract(randomNumber1: randomNumber1,randomNumber2: randomNumber2)
                
                break
            case 3:
                //Multiplication -> answer Through Yes No
                randomNumber1 = randomNumber1 % 11 //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 11  //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")

                multiplication(randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                
                break
            case 4:
                //Division -> Pick from Pick1 - Pick2 - Pick3
                randomNumber1 = randomNumber1 % 10 + 1
                randomNumber2 = randomNumber2 % 10 + 1

                print ("RandomNumber 1 and 2 are: \(randomNumber1) and \(randomNumber2)")
                
                
                dividePick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 5:
                //Pick Addition -> pick  PICK
                randomNumber1 = randomNumber1 % 11
                randomNumber2 = randomNumber2 % 11
                
                print ("pickPick randomNumber 1 ans 2 are: \(randomNumber1) and \(randomNumber2)")
                additionPick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 6:
                //Pick Subtraction -> pick PICK
                randomNumber1 = randomNumber1 % 11
                randomNumber2 = randomNumber2 % 11
                
                print ("pickPick randomNumber 1 ans 2 are: \(randomNumber1) and \(randomNumber2)")
                subtractionPick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 7:
                //small to highest pick
                num4 = number4Func() % 100
                num5 = number5Func() % 100
                num6 = number6Func() % 100

                print ("\(num4) \(num5) \(num6)")
                
                minMax4.setTitle(String (num4), for: .normal)
                minMax5.setTitle(String (num5), for: .normal)
                minMax6.setTitle(String (num6), for: .normal)
                
            
            default:
                break
            }
            
        }
        
        else if (levelName == "2") {
            settingTimerBack()
            let pickRandomOperator = (arc4random() % 7)+1
            print ("Random Operator is - \(pickRandomOperator)")
            
            if (pickRandomOperator <= 3) {
                yesOutlet.isHidden = false
                noOutlet.isHidden = false
                
                pick1Outlet.isHidden = true
                pick2Outlet.isHidden = true
                pick3Outlet.isHidden = true
                
                equationData.isHidden = false
                
                minMax1.isHidden = true
                minMax2.isHidden = true
                minMax3.isHidden = true
                minMax4.isHidden = true
                minMax5.isHidden = true
                minMax6.isHidden = true
                minMaxInstruction.isHidden = true
            }
            else if (pickRandomOperator >= 4 && pickRandomOperator <= 6) {
                yesOutlet.isHidden = true
                noOutlet.isHidden = true
                equationData.isHidden = false
                pick1Outlet.isHidden = false
                pick2Outlet.isHidden = false
                pick3Outlet.isHidden = false
                
                minMax1.isHidden = true
                minMax2.isHidden = true
                minMax3.isHidden = true
                minMax4.isHidden = true
                minMax5.isHidden = true
                minMax6.isHidden = true
                minMaxInstruction.isHidden = true
                
            }
            else if (pickRandomOperator >= 7) {
                
                yesOutlet.isHidden = true
                noOutlet.isHidden = true
                
                print ("Hey Printed")
                
                pick1Outlet.isHidden = true
                pick2Outlet.isHidden = true
                pick3Outlet.isHidden = true
                equationData.isHidden = true
                
                minMaxInstruction.isHidden = false
                minMaxInstruction.text = "Select from smallest to Highest"
                minMax2.isHidden = false
                minMax4.isHidden = false
                minMax5.isHidden = false
                minMax6.isHidden = false
            }
            
            switch (pickRandomOperator) {
            case 1:
                //Addition -> answer Through Yes No
                randomNumber1 = randomNumber1 % 101  //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 101 //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                
                
                addition(randomNumber1: randomNumber1,randomNumber2: randomNumber2)
                
                break
            case 2:
                //Subtraction -> answer Through Yes No
                randomNumber1 = randomNumber1 % 101  //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 101  //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                subtract(randomNumber1: randomNumber1,randomNumber2: randomNumber2)
                
                break
            case 3:
                //Multiplication -> answer Through Yes No
                randomNumber1 = randomNumber1 % 25 //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 11  //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                multiplication(randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                
                break
            case 4:
                //Division -> Pick from Pick1 - Pick2 - Pick3
                randomNumber1 = randomNumber1 % 25 + 1
                randomNumber2 = randomNumber2 % 25 + 1
                
                print ("RandomNumber 1 and 2 are: \(randomNumber1) and \(randomNumber2)")
                
                
                dividePick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 5:
                //Pick Addition -> pick  PICK
                randomNumber1 = randomNumber1 % 101
                randomNumber2 = randomNumber2 % 101
                
                print ("pickPick randomNumber 1 ans 2 are: \(randomNumber1) and \(randomNumber2)")
                additionPick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 6:
                //Pick Subtraction -> pick PICK
                randomNumber1 = randomNumber1 % 101
                randomNumber2 = randomNumber2 % 101
                
                print ("pickPick randomNumber 1 ans 2 are: \(randomNumber1) and \(randomNumber2)")
                subtractionPick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 7:
                //small to highest pick
                num2 = number2Func() % 500
                num4 = number4Func() % 500
                num5 = number5Func() % 500
                num6 = number6Func() % 500
                
                print ("\(num2) \(num4) \(num5) \(num6)")
                
                minMax2.setTitle(String (num2), for: .normal)
                minMax4.setTitle(String (num4), for: .normal)
                minMax5.setTitle(String (num5), for: .normal)
                minMax6.setTitle(String (num6), for: .normal)
                
            default:
                break
            }
        }
        
        else if (levelName == "3") {
            settingTimerBack()
            let pickRandomOperator = (arc4random() % 7)+1
            print ("Random Operator is - \(pickRandomOperator)")
            
            if (pickRandomOperator <= 3) {
                yesOutlet.isHidden = false
                noOutlet.isHidden = false
                
                pick1Outlet.isHidden = true
                pick2Outlet.isHidden = true
                pick3Outlet.isHidden = true
                
                equationData.isHidden = false
                
                minMax1.isHidden = true
                minMax2.isHidden = true
                minMax3.isHidden = true
                minMax4.isHidden = true
                minMax5.isHidden = true
                minMax6.isHidden = true
                minMaxInstruction.isHidden = true
            }
            else if (pickRandomOperator >= 4 && pickRandomOperator <= 6) {
                yesOutlet.isHidden = true
                noOutlet.isHidden = true
                equationData.isHidden = false
                pick1Outlet.isHidden = false
                pick2Outlet.isHidden = false
                pick3Outlet.isHidden = false
                
                minMax1.isHidden = true
                minMax2.isHidden = true
                minMax3.isHidden = true
                minMax4.isHidden = true
                minMax5.isHidden = true
                minMax6.isHidden = true
                minMaxInstruction.isHidden = true
                
            }
            else if (pickRandomOperator >= 7) {
                
                yesOutlet.isHidden = true
                noOutlet.isHidden = true
                
                print ("Hey Printed")
                
                pick1Outlet.isHidden = true
                pick2Outlet.isHidden = true
                pick3Outlet.isHidden = true
                equationData.isHidden = true
                
                minMaxInstruction.isHidden = false
                minMaxInstruction.text = "Select from smallest to Highest"
                minMax1.isHidden = false
                minMax2.isHidden = false
                minMax3.isHidden = false
                minMax4.isHidden = false
                minMax5.isHidden = false
                minMax6.isHidden = false
            }
            
            switch (pickRandomOperator) {
            case 1:
                //Addition -> answer Through Yes No
                randomNumber1 = randomNumber1 % 500  //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 500 //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                addition(randomNumber1: randomNumber1,randomNumber2: randomNumber2)
                
                break
            case 2:
                //Subtraction -> answer Through Yes No
                randomNumber1 = randomNumber1 % 500  //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 500  //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                subtract(randomNumber1: randomNumber1,randomNumber2: randomNumber2)
                
                break
            case 3:
                //Multiplication -> answer Through Yes No
                randomNumber1 = randomNumber1 % 50 //Pick numbers between 0 to 10
                randomNumber2 = randomNumber2 % 11  //Pick numbers between 0 to 10
                
                print ("RandomNumber 1 and 2 are - > \(randomNumber1)   \(randomNumber2)")
                
                multiplication(randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                
                break
            case 4:
                //Division -> Pick from Pick1 - Pick2 - Pick3
                randomNumber1 = randomNumber1 % 50 + 1
                randomNumber2 = randomNumber2 % 50 + 1
                
                print ("RandomNumber 1 and 2 are: \(randomNumber1) and \(randomNumber2)")
                
                
                dividePick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 5:
                //Pick Addition -> pick  PICK
                randomNumber1 = randomNumber1 % 500
                randomNumber2 = randomNumber2 % 500
                
                print ("pickPick randomNumber 1 ans 2 are: \(randomNumber1) and \(randomNumber2)")
                additionPick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 6:
                //Pick Subtraction -> pick PICK
                randomNumber1 = randomNumber1 % 500
                randomNumber2 = randomNumber2 % 500
                
                print ("pickPick randomNumber 1 ans 2 are: \(randomNumber1) and \(randomNumber2)")
                subtractionPick (randomNumber1: randomNumber1, randomNumber2: randomNumber2)
                break
            case 7:
                //small to highest pick
                num1 = number1Func() % 1001
                num2 = number2Func() % 1001
                num3 = number3Func() % 1001
                num4 = number4Func() % 1001
                num5 = number5Func() % 1001
                num6 = number6Func() % 1001
                
                print ("\(num1) \(num2) \(num3) \(num4) \(num5) \(num6)")
                
                minMax1.setTitle(String (num1), for: .normal)
                minMax2.setTitle(String (num2), for: .normal)
                minMax3.setTitle(String (num3), for: .normal)
                minMax4.setTitle(String (num4), for: .normal)
                minMax5.setTitle(String (num5), for: .normal)
                minMax6.setTitle(String (num6), for: .normal)
                
            default:
                break
            }

        }
        
    }
    
    
    
    
    //  *********************  //
    //                         //
    //      BUTTONS ACTION     //
    //                         //
    //  *********************  //
    
    
    @IBAction func startAction(_ sender: UIButton) {
        
        playSound ()
        levelName = x
        
        viewThreeBackOutlet.isHidden = true
        viewThreeHomeOutlet.isHidden = true
        startOutlet.isHidden = true
        startButtonView.isHidden = true
        
      //  homeButtonView.isHidden = true
      //  backButtonView.isHidden = true
        
        starImage.isHidden = false
        scoreNumber.isHidden = false
        
        timeImage.isHidden = false
        timeDigits.isHidden = false
    
        startOutlet.setTitle("Restart", for: .normal)
        scoreViewThree = 0
        timeFunc ()
        mainEquation()
    }
    
    @IBAction func viewThreeBackAction(_ sender: UIButton) {
        playSound ()

    }
    
    @IBAction func viewThreeHomeAction(_ sender: UIButton) {
        playSound ()
    }
    
    @IBAction func yesAction(_ sender: UIButton) {
        inGame()
        if (trueAnswer == rightOrWrong) {
            
            scoreViewThree += counter
            scoreNumber.text = "\(scoreViewThree)"
            mainEquation()
        }
        else {
            timer?.invalidate()
            restartGame()
            print ("True answer is \(trueAnswer) and wrong answer is \(rightOrWrong)")
        }
    }
    
    @IBAction func noAction(_ sender: UIButton) {
        inGame()
        if (trueAnswer != rightOrWrong) {
            scoreViewThree += counter
            scoreNumber.text = "\(scoreViewThree)"
            mainEquation()
        }
        else {
            timer?.invalidate()
            restartGame()
            print ("True answer is \(trueAnswer) and wrong answer is \(rightOrWrong)")
        }
    }
    
    @IBAction func pick1Action(_ sender: UIButton) {
        inGame()
        pickButton =  (pick1Outlet.currentTitle)!
        
        pick1Outlet.isHidden = true
        pick2Outlet.isHidden = true
        pick3Outlet.isHidden = true
        
        checkPick()
    }
    
    @IBAction func pick2Action(_ sender: UIButton) {
        inGame()
        pickButton =  (pick2Outlet.currentTitle)!
        
        pick1Outlet.isHidden = true
        pick2Outlet.isHidden = true
        pick3Outlet.isHidden = true
        
        checkPick()

    }
    
    @IBAction func pick3Action(_ sender: UIButton) {
        inGame()
        pickButton =  (pick3Outlet.currentTitle)!
        
        pick1Outlet.isHidden = true
        pick2Outlet.isHidden = true
        pick3Outlet.isHidden = true
        
        checkPick()

    }
    
    @IBAction func minMax1Action(_ sender: UIButton) {
        inGame()
        clickedButtons = Int(num1)
        TrueMinMaxAnswer.append(clickedButtons)
        minMax1.isHidden = true
        minMaxCheck ()

    }
    
    @IBAction func minMax2Action(_ sender: UIButton) {
        inGame()
        clickedButtons = Int(num2)
        TrueMinMaxAnswer.append(clickedButtons)
        minMax2.isHidden = true
        minMaxCheck ()

    }
    
    @IBAction func minMax3Action(_ sender: UIButton) {
       inGame()
        clickedButtons = Int(num3)
        TrueMinMaxAnswer.append(clickedButtons)
        minMax3.isHidden = true
        minMaxCheck ()

    }
    
    @IBAction func minMax4Action(_ sender: UIButton) {
       inGame()
        clickedButtons = Int(num4)
        TrueMinMaxAnswer.append(clickedButtons)
        minMax4.isHidden = true
        minMaxCheck ()
    }
    
    @IBAction func minMax5Action(_ sender: UIButton) {
        inGame()
        clickedButtons = Int(num5)
        TrueMinMaxAnswer.append(clickedButtons)
        minMax5.isHidden = true
        minMaxCheck ()

    }
    
    @IBAction func minMax6Action(_ sender: UIButton) {
        inGame()
        clickedButtons = Int(num6)
        TrueMinMaxAnswer.append(clickedButtons)
        minMax6.isHidden = true
        minMaxCheck ()

    }
    
    //  ************************  //
    //                            //
    //     END BUTTONS ACTION     //
    //                            //
    //  ************************  //
    
    
    ///////////////////////*************///////////////////////////
    
                    //ALL NEEDED FUNCTONS HERE//
    
    ///////////////////////*************///////////////////////////
    
    func restartGame () {
        
        startOutlet.isHidden = false
        startButtonView.isHidden = false
        minMaxInstruction.textColor = UIColor.red
        minMaxInstruction.text = "Final Score is : \(scoreViewThree) "
        finalScore (finalScore: scoreViewThree)
        minMaxInstruction.isHidden = false
        yesOutlet.isHidden = true
        noOutlet.isHidden = true
        
        viewThreeBackOutlet.isHidden = false
        viewThreeHomeOutlet.isHidden = false
        pick1Outlet.isHidden = true
        pick2Outlet.isHidden = true
        pick3Outlet.isHidden = true
        
        scoreViewThree = 0
        scoreNumber.text = "\(scoreViewThree)"
    }
    
    func addition (randomNumber1: Int, randomNumber2: Int) {
        
        trueAnswer = randomNumber1 + randomNumber2
        
        print ("Trueanswer is \(trueAnswer)")
        
        let pickAnswer: Int = Int(arc4random_uniform(2) + 1) //Pick whether shown right answer or wrong for YES or NO to be click

        print ("From Function pickAnswer :  \(pickAnswer)")
        
        
        switch (pickAnswer) {
        case 1: //Show right answer to equation
            rightOrWrong = trueAnswer
            equationData.text = "\(randomNumber1) + \(randomNumber2) = \(trueAnswer)"
            break
        case 2: //Show wrong answer to equation
            let pickSign : Int = Int(arc4random_uniform(2) + 1)
            
            print ("Pick sign \(pickSign)")
            
            if (pickSign == 1) { //ADD to the trueAnswer
            rightOrWrong = trueAnswer + Int (arc4random_uniform(9)) + 1
            equationData.text = "\(randomNumber1) + \(randomNumber2) = \(rightOrWrong)"
            }
            else if (pickSign == 2){ //SUbtract from the trueAnswer
            rightOrWrong = trueAnswer - Int (arc4random_uniform(9)) + 1
            equationData.text = "\(randomNumber1) + \(randomNumber2) = \(rightOrWrong)"
            }
            break
        default:
            break
        }

    }
    
    
    func subtract(randomNumber1: Int, randomNumber2: Int) {
        trueAnswer = randomNumber1 - randomNumber2
        
        print ("Trueanswer is \(trueAnswer)")
        
    let pickAnswer: Int = Int (arc4random_uniform(2) + 1) // pick whether to show right or wrong answer for YES or NO to click
    
        print ("From Function pickAnswer :  \(pickAnswer)")
        
        switch (pickAnswer) {
        case 1: //Show right answer to the equation
            rightOrWrong = trueAnswer
            equationData.text = "\(randomNumber1) - \(randomNumber2) = \(trueAnswer)"
            break
        case 2: // Show wrong answer to the equation
            let pickSign : Int = Int (arc4random_uniform(2) + 1)
            
            print ("Pick sign \(pickSign)")
            
            if (pickSign == 1) { //Add the the trueAnswer
            rightOrWrong = trueAnswer + Int (arc4random_uniform(8)) + 1
            equationData.text = "\(randomNumber1) - \(randomNumber2) = \(rightOrWrong)"
            }
            else if (pickSign == 2) {//Subtract from the trueAnswer
            rightOrWrong = trueAnswer - Int (arc4random_uniform(8)) + 1
            equationData.text = "\(randomNumber1) - \(randomNumber2) = \(rightOrWrong)"
            }
            break
        default:
            break
        }
    }
    
    func multiplication (randomNumber1: Int, randomNumber2: Int) {
        
        let pickAnswer: Int = Int (arc4random_uniform(4) + 1) // pick whetehr to show from right answer or wront for YES or No
        
        print ("From Function pickAnswer :  \(pickAnswer)")
        
        switch (pickAnswer) {
        case 1: // Show right answer to the shown equation 
            trueAnswer = randomNumber1 * randomNumber2
            
            print ("Trueanswer is \(trueAnswer)")
            
            rightOrWrong = trueAnswer
            equationData.text = "\(randomNumber1) * \(randomNumber2) = \(trueAnswer)"
            break
        case 2: //SHow wrong answer to the shown equation
            trueAnswer = randomNumber1 * randomNumber2
            
            print ("Trueanswer is \(trueAnswer)")
            
            let pickSign : Int = Int (arc4random_uniform(2) + 1)
            
            print ("Pick sign \(pickSign)")
            
            if (pickSign == 1) { // add to the true answer
            rightOrWrong = trueAnswer + Int (arc4random_uniform(4)) + 1
            equationData.text = "\(randomNumber1) * \(randomNumber2) = \(rightOrWrong)"
            }
            else if (pickSign == 2) {//Subtract from the true answer 
            rightOrWrong = trueAnswer - Int (arc4random_uniform(4)) + 1
            equationData.text = "\(randomNumber1) * \(randomNumber2) = \(rightOrWrong)"
            }
            break
        case 3:
            trueAnswer = randomNumber1 * randomNumber1
            
            print ("Trueanswer is \(trueAnswer)")

            
            equationData.text = "\(randomNumber1) * \(randomNumber1) = \(trueAnswer)"
            rightOrWrong = trueAnswer
            break
        case 4:
            trueAnswer = randomNumber1 * randomNumber1
            
            print ("Trueanswer is \(trueAnswer)")

            let pickSign : Int = Int (arc4random_uniform(2) + 1)
            
            print ("Pick sign \(pickSign)")

            if (pickSign == 1) { // add to the true answer
                rightOrWrong = trueAnswer + Int (arc4random_uniform(4)) + 1
                equationData.text = "\(randomNumber1) * \(randomNumber1) = \(rightOrWrong)"
            }
            else if (pickSign == 2) {//Subtract from the true answer
                rightOrWrong = trueAnswer - Int (arc4random_uniform(4)) + 1
                equationData.text = "\(randomNumber1) * \(randomNumber1) = \(rightOrWrong)"
            }
            break
        default:
            
            break
        }
        
    }
    
    var pickPick = Int ()
    
    func dividePick (randomNumber1: Int, randomNumber2: Int) {
        trueAnswer = randomNumber1 * randomNumber2
        pickPick = Int(arc4random_uniform(3) + 1) // Pick for which to be stay '?'
        
        switch (pickPick) {
        case 1: // trueAnswer ÷ randomNumber2 = '?' <- randomNumber1
                wrongAnswer1 = randomNumber1 + Int (arc4random_uniform(4) + 1)
                wrongAnswer2 = randomNumber1 - Int (arc4random_uniform(4) + 1)
                
                let pickPlace : Int = Int (arc4random_uniform(3) + 1)
                
                switch (pickPlace) {
                case 1:
                    pick1Outlet.setTitle("\(randomNumber1)", for: .normal)
                    pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                    pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                    
                    equationData.text = "\(trueAnswer) ÷ \(randomNumber2) = ?"
                    
                    break
                case 2:
                    pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                    pick2Outlet.setTitle("\(randomNumber1)",  for: .normal)
                    pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                    equationData.text = "\(trueAnswer) ÷ \(randomNumber2) = ?"
                    break
                case 3:
                    pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                    pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                    pick3Outlet.setTitle("\(randomNumber1)",  for: .normal)
                    equationData.text = "\(trueAnswer) ÷ \(randomNumber2) = ?"
                    break
                default:
                    break
                }
            break
        case 2: // ? ÷ randomNumber2 = randomNumber1
                wrongAnswer1 = trueAnswer + Int (arc4random_uniform(10)+1)
                wrongAnswer2 = trueAnswer - Int (arc4random_uniform(10)+1)
                
                let pickPlace : Int = Int (arc4random_uniform(3)+1)
                
                switch (pickPlace) {
                case 1:
                    pick1Outlet.setTitle("\(trueAnswer)", for: .normal)
                    pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                    pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                    
                    equationData.text = "? ÷ \(randomNumber2) = \(randomNumber1)"
                    
                    break
                case 2:
                    pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                    pick2Outlet.setTitle("\(trueAnswer)",  for: .normal)
                    pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                    equationData.text = "? ÷ \(randomNumber2) = \(randomNumber1)"
                    break
                case 3:
                    pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                    pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                    pick3Outlet.setTitle("\(trueAnswer)",  for: .normal)
                    equationData.text = "? ÷ \(randomNumber2) = \(randomNumber1)"
                    break
                default:
                    break
                }
            break
        case 3: // trueAnswer ÷ ? = randomNumber1
            wrongAnswer1 = randomNumber2 + Int (arc4random_uniform(4)+1)
            wrongAnswer2 = randomNumber2 - Int (arc4random_uniform(4)+1)
            
            let pickPlace : Int = Int (arc4random_uniform(3)+1)
            
            switch (pickPlace) {
            case 1:
                pick1Outlet.setTitle("\(randomNumber2)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                
                equationData.text = "\(trueAnswer) ÷ ? = \(randomNumber1)"
                
                break
            case 2:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(randomNumber2)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                equationData.text = "\(trueAnswer) ÷ ? = \(randomNumber1)"
                break
            case 3:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                pick3Outlet.setTitle("\(randomNumber2)",  for: .normal)
                equationData.text = "\(trueAnswer) ÷ ? = \(randomNumber1)"
                break
            default:
                break
            }
            break
        default:
            break
        }
    }
    
    func additionPick (randomNumber1: Int, randomNumber2: Int) {
        trueAnswer = randomNumber1 + randomNumber2
        pickPick = Int(arc4random_uniform(3) + 1) // Pick for which to be stay '?'
        
        switch (pickPick) {
        case 1: // ? + randomNumber2 = trueAnswer
            wrongAnswer1 = randomNumber1 + Int (arc4random_uniform(6) + 1)
            wrongAnswer2 = randomNumber1 - Int (arc4random_uniform(6) + 1)
            
            let pickPlace : Int = Int (arc4random_uniform(3) + 1)
            
            switch (pickPlace) {
            case 1:
                pick1Outlet.setTitle("\(randomNumber1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                
                equationData.text = "? + \(randomNumber2) = \(trueAnswer)"
                
                break
            case 2:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(randomNumber1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                equationData.text = "? + \(randomNumber2) = \(trueAnswer)"
                break
            case 3:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                pick3Outlet.setTitle("\(randomNumber1)",  for: .normal)
                equationData.text = "? + \(randomNumber2) = \(trueAnswer)"
                break
            default:
                break
            }
            break
        case 2: // randomNumber1 + randomNumber2 = ?
            wrongAnswer1 = trueAnswer + Int (arc4random_uniform(10)+1)
            wrongAnswer2 = trueAnswer - Int (arc4random_uniform(10)+1)
            
            let pickPlace : Int = Int (arc4random_uniform(3)+1)
            
            switch (pickPlace) {
            case 1:
                pick1Outlet.setTitle("\(trueAnswer)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                
                equationData.text = "\(randomNumber1) + \(randomNumber2) = ?"
                
                break
            case 2:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(trueAnswer)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                equationData.text = "\(randomNumber1) + \(randomNumber2) = ?"
                break
            case 3:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                pick3Outlet.setTitle("\(trueAnswer)",  for: .normal)
                equationData.text = "\(randomNumber1) + \(randomNumber2) = ?"
                break
            default:
                break
            }
            break
        case 3: // trueAnswer ÷ ? = randomNumber1
            wrongAnswer1 = randomNumber2 + Int (arc4random_uniform(6)+1)
            wrongAnswer2 = randomNumber2 - Int (arc4random_uniform(6)+1)
            
            let pickPlace : Int = Int (arc4random_uniform(3)+1)
            
            switch (pickPlace) {
            case 1:
                pick1Outlet.setTitle("\(randomNumber2)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                
                equationData.text = "\(randomNumber1) + ? = \(trueAnswer)"
                
                break
            case 2:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(randomNumber2)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                equationData.text = "\(randomNumber1) + ? = \(trueAnswer)"
                break
            case 3:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                pick3Outlet.setTitle("\(randomNumber2)",  for: .normal)
                equationData.text = "\(randomNumber1) + ? = \(trueAnswer)"
                break
            default:
                break
            }
            break
        default:
            break
        }

    }
    
    func subtractionPick (randomNumber1: Int, randomNumber2: Int) {
        trueAnswer = randomNumber1 - randomNumber2
        pickPick = Int(arc4random_uniform(3) + 1) // Pick for which to be stay '?'
        
        switch (pickPick) {
        case 1: // ? + randomNumber2 = trueAnswer
            wrongAnswer1 = randomNumber1 + Int (arc4random_uniform(6) + 1)
            wrongAnswer2 = randomNumber1 - Int (arc4random_uniform(6) + 1)
            
            let pickPlace : Int = Int (arc4random_uniform(3) + 1)
            
            switch (pickPlace) {
            case 1:
                pick1Outlet.setTitle("\(randomNumber1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                
                equationData.text = "? - \(randomNumber2) = \(trueAnswer)"
                
                break
            case 2:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(randomNumber1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                equationData.text = "? - \(randomNumber2) = \(trueAnswer)"
                break
            case 3:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                pick3Outlet.setTitle("\(randomNumber1)",  for: .normal)
                equationData.text = "? - \(randomNumber2) = \(trueAnswer)"
                break
            default:
                break
            }
            break
        case 2: // randomNumber1 + randomNumber2 = ?
            wrongAnswer1 = trueAnswer + Int (arc4random_uniform(10)+1)
            wrongAnswer2 = trueAnswer - Int (arc4random_uniform(10)+1)
            
            let pickPlace : Int = Int (arc4random_uniform(3)+1)
            
            switch (pickPlace) {
            case 1:
                pick1Outlet.setTitle("\(trueAnswer)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                
                equationData.text = "\(randomNumber1) - \(randomNumber2) = ?"
                
                break
            case 2:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(trueAnswer)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                equationData.text = "\(randomNumber1) - \(randomNumber2) = ?"
                break
            case 3:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                pick3Outlet.setTitle("\(trueAnswer)",  for: .normal)
                equationData.text = "\(randomNumber1) - \(randomNumber2) = ?"
                break
            default:
                break
            }
            break
        case 3: // trueAnswer ÷ ? = randomNumber1
            wrongAnswer1 = randomNumber2 + Int (arc4random_uniform(6)+1)
            wrongAnswer2 = randomNumber2 - Int (arc4random_uniform(6)+1)
            
            let pickPlace : Int = Int (arc4random_uniform(3)+1)
            
            switch (pickPlace) {
            case 1:
                pick1Outlet.setTitle("\(randomNumber2)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer1)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                
                equationData.text = "\(randomNumber1) - ? = \(trueAnswer)"
                
                break
            case 2:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(randomNumber2)",  for: .normal)
                pick3Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                equationData.text = "\(randomNumber1) - ? = \(trueAnswer)"
                break
            case 3:
                pick1Outlet.setTitle("\(wrongAnswer1)", for: .normal)
                pick2Outlet.setTitle("\(wrongAnswer2)",  for: .normal)
                pick3Outlet.setTitle("\(randomNumber2)",  for: .normal)
                equationData.text = "\(randomNumber1) - ? = \(trueAnswer)"
                break
            default:
                break
            }
            break
        default:
            break
        }
        
    }
    func checkPick () {
        if (pickPick == 1) {
            if (pickButton == String(randomNumber1)) {
                print ("Pick right answer")
                scoreViewThree += counter
                scoreNumber.text = "\(scoreViewThree)"
                mainEquation()
            }
            else {
                timer?.invalidate()
                restartGame()
                print ("Picked wrong answer")
            }
        }
        else if (pickPick == 2) {
            if (pickButton == String(trueAnswer)) {
                print ("Pick right answer")
                scoreViewThree += counter
                scoreNumber.text = "\(scoreViewThree)"
                mainEquation()
            }
            else {
                timer?.invalidate()
                restartGame()
                print ("Picked wrong answer")
            }
        }
        else if (pickPick == 3) {
            if (pickButton == String(randomNumber2)) {
                print ("Pick right answer")
                scoreViewThree += counter
                scoreNumber.text = "\(scoreViewThree)"
                mainEquation()
            }
            else {
                timer?.invalidate()
                restartGame()
                print ("Picked wrong answer")
            }
        }
    }
    
    func minMaxCheck () {
        if (levelName == "1" && TrueMinMaxAnswer.count == 3) {
            var numbers: [Int] = [Int (num4), Int (num5), Int (num6)]
            numbers.sort {
                return $0 < $1
            }
         print ("Right Sorted Order : \(numbers)")
            
            if (TrueMinMaxAnswer == numbers) {
                print ("Your answer is Right = \(TrueMinMaxAnswer)")
                TrueMinMaxAnswer.removeAll ()
                numbers.removeAll()
                scoreViewThree += counter
                scoreNumber.text = "\(scoreViewThree)"
                mainEquation()
            }
            else {
                timer?.invalidate()
                numbers.removeAll()
                TrueMinMaxAnswer.removeAll()
                restartGame()
            }
        }
        else if (levelName == "2" && TrueMinMaxAnswer.count == 4) {
            var numbers: [Int] = [Int (num2) ,Int (num4), Int (num5), Int (num6)]
            numbers.sort {
                return $0 < $1
            }
            print ("Right Sorted Order : \(numbers)")
            
            if (TrueMinMaxAnswer == numbers) {
                print ("Your answer is Right = \(TrueMinMaxAnswer)")
                TrueMinMaxAnswer.removeAll ()
                numbers.removeAll()
                scoreViewThree += counter
                scoreNumber.text = "\(scoreViewThree)"
                mainEquation()
            }
            else {
                timer?.invalidate()
                numbers.removeAll()
                TrueMinMaxAnswer.removeAll()
                restartGame()
            }
        }
        else if (levelName == "3" && TrueMinMaxAnswer.count == 6) {
            var numbers: [Int] = [Int (num1) , Int (num2), Int (num3) ,Int (num4), Int (num5), Int (num6)]
            numbers.sort {
                return $0 < $1
            }
            print ("Right Sorted Order : \(numbers)")
            
            if (TrueMinMaxAnswer == numbers) {
                print ("Your answer is Right = \(TrueMinMaxAnswer)")
                TrueMinMaxAnswer.removeAll ()
                numbers.removeAll()
                scoreViewThree += counter
                scoreNumber.text = "\(scoreViewThree)"
                mainEquation()
            }
            else {
                timer?.invalidate()
                numbers.removeAll()
                TrueMinMaxAnswer.removeAll()
                restartGame()
            }
        }
    }

}

