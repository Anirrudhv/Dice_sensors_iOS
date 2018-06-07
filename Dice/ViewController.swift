//
//  ViewController.swift
//  Dice
//
//  Created by Anirudh V on 6/6/18.
//  Copyright © 2018 Anirudh V. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var randomindex1: Int = 0
    var randomindex2: Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var Tot: UILabel!
    let dicearray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Ani()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rollButton(_ sender: Any) {
        Ani()
        
    }
    
    func Ani(){
        randomindex1 = Int(arc4random_uniform(6))
        randomindex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: dicearray[randomindex1])
        diceImageView2.image = UIImage(named: dicearray[randomindex2])
        let tot = randomindex2+1 + randomindex1+1
        Tot.text = String(tot)
    
    }
    
}

