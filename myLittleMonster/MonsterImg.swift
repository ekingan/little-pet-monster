//
//  MonsterImg.swift
//  myLittleMonster
//
//  Created by Math LLC on 6/16/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        //Animate image
        var imgArr = [UIImage]()
        //Loop for running though 4 images to animate
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArr.append(img!)
        }
        
        self.animationImages = imgArr
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
        
    }
    
    func playDeathAnimations() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        //Animate image
        var imgArr = [UIImage]()
        //Loop for running though 4 images to animate
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "dead\(x).png")
            imgArr.append(img!)
        }
        
        self.animationImages = imgArr
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}