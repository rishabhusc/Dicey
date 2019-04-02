//
//  ViewController.swift
//  DICEY
//
//  Created by Rishabh Khandelwal on 2/24/19.
//  Copyright © 2019 Rishabh Khandelwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceViewImage1: UIImageView!
    @IBOutlet weak var diceViewImage2: UIImageView!
    let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    var dice_1 : Int = 0
    var dice_2 : Int = 0
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changedicyy()
    }

    @IBAction func buttonRollerController(_ sender: Any) {
        changedicyy()

    }
    func changedicyy(){
        dice_1=Int(arc4random_uniform(6))
        dice_2=Int(arc4random_uniform(6))
        
        diceViewImage1.image=UIImage(named:diceArray[dice_1])
        diceViewImage2.image=UIImage(named:diceArray[dice_2])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changedicyy()
        
    }
    
}

