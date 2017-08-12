//
//  threeMinViewTwo.swift
//  Ez Math
//
//  Created by Apurva Patel on 3/9/17.
//  Copyright © 2017 Apurva Patel. All rights reserved.
//

import Foundation
import UIKit
import Canvas

var z = String ()

class threeMinViewTwo : UIViewController {
    

    @IBOutlet weak var threeMinBeginnerOutlet: UIButton!
    
    
    @IBOutlet weak var threeMinModerateOutlet: UIButton!
    
    
    @IBOutlet weak var threeMinExpertOutlet: UIButton!
    
    
    @IBOutlet weak var threeMinHomeOutlet: UIButton!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func threeMinBeginnerAction(_ sender: UIButton) {
        playSound ()

        z = "1"
    }
   
    @IBAction func threeMinModerateAction(_ sender: UIButton) {
        playSound ()

        z = "2"
    }
    
    
    @IBAction func threeMinExpertAction(_ sender: UIButton) {
        playSound ()

        z = "3"
    }
    
}

