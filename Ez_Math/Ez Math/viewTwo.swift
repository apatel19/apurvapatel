//
//  viewTwo.swift
//  Ez Math
//
//  Created by Apurva Patel on 3/8/17.
//  Copyright © 2017 Apurva Patel. All rights reserved.
//

import Foundation
import UIKit
//import Canvas

var x = String()

class viewTwo : UIViewController {

    
    @IBOutlet weak var viewTwoHomeOutlet: UIButton!

    @IBOutlet weak var view2HomeAnimation: CSAnimationView!
    
    @IBOutlet weak var viewTwoBeginnerOutlet: UIButton!
    
    @IBOutlet weak var view2BeginnerAnimation: CSAnimationView!
    
    @IBOutlet weak var viewTwoModerateOutlet: UIButton!
    
    @IBOutlet weak var view2ModerateAnimation: CSAnimationView!
    
    @IBOutlet weak var viewTwoExpertOutlet: UIButton!
    
    @IBOutlet weak var view2ExpertAnimation: CSAnimationView!
    
    override func viewDidLoad() {
        
    }
    
   
    @IBAction func viewTwoBeginnerAction(_ sender: UIButton) {
        playSound ()
      x = "1"
    }
    @IBAction func viewTwoModerateAction(_ sender: UIButton) {
        playSound ()
        x = "2"
    }
    @IBAction func viewTwoExpertAction(_ sender: UIButton) {
        playSound ()
        x = "3"
    }
    @IBAction func viewTwohomeAction(_ sender: UIButton) {
        playSound ()

        x = "4"
    }
 
    
    
}

