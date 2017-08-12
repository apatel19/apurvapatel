//
//  scoreView.swift
//  Ez Math
//
//  Created by Apurva Patel on 3/9/17.
//  Copyright © 2017 Apurva Patel. All rights reserved.
//

import Foundation
import UIKit
import Canvas

class viewScore : UIViewController {
    
    
    @IBOutlet weak var inTimeBeginnerScore: UILabel!
    
    @IBOutlet weak var inTimeModerateScore: UILabel!
    
    @IBOutlet weak var inTimeExpertScore: UILabel!
    
    @IBOutlet weak var threeMinBeginnerScore: UILabel!
    
    @IBOutlet weak var threeMinModerateScore: UILabel!
    
    @IBOutlet weak var threeMinExpertScore: UILabel!
    
    override func viewDidLoad() {
         super.viewDidLoad()
    inTimeBeginnerScore.text = String(inTime1)
    inTimeModerateScore.text = String(inTime2)
    inTimeExpertScore.text = String(inTime3)
        
    threeMinBeginnerScore.text = String(three1)
    threeMinModerateScore.text = String(three2)
    threeMinExpertScore.text = String (three3)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
