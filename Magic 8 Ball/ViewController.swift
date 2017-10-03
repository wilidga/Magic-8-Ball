//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Wilman Garcia De Leon on 10/2/17.
//  Copyright © 2017 wilidgasoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageViewAsk: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       newBallImage()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageViewAsk.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    
}

