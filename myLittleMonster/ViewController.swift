//
//  ViewController.swift
//  myLittleMonster
//
//  Created by Math LLC on 6/15/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: UIImageView!
    
    @IBOutlet weak var foodImg: DragImage!
    
    @IBOutlet weak var heartImg: DragImage!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //Animate image
        var imgArr = [UIImage]()
    //Loop for running though 4 images to animate
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArr.append(img!)
        }
        
        monsterImg.animationImages = imgArr
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("I touched the screen!")
    }

}

