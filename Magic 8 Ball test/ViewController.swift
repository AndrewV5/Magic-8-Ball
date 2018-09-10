//
//  ViewController.swift
//  Magic 8 Ball test
//
//  Created by Andrew Vergara on 2018-09-10.
//  Copyright © 2018 Andrew Vergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallIndex : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        updateBallImage()
    }
    func updateBallImage(){
        randomBallIndex = Int(arc4random_uniform(5))
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
        
    }

}

