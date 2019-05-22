//
//  ViewController.swift
//  8Bro
//
//  Created by Russell Ong on 22/5/19.
//  Copyright © 2019 Russell Ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBroInt: Int = 0
    @IBOutlet weak var BroBall: UIImageView!
    let BroBallArray = ["ball1","ball2","ball3","ball4","ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBallType()
    }


    @IBAction func Asking(_ sender: UIButton) {
        changeBallType()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallType()
    }
    
    func changeBallType () {
        randomBroInt = Int.random(in:0...4)
        
        BroBall.image = UIImage(named: BroBallArray[randomBroInt])
    }
}

