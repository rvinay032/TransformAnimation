//
//  FishVC.swift
//  TransformAnimation
//
//  Created by appinventiv on 14/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class FishVC: UIViewController {

    
    @IBOutlet weak var pinkView: UIView!
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var blueView: UIView!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var greyview: UIView!
    
    @IBOutlet weak var blackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
       
        
      // randomly create a value between 0.0 and 150.0
        let randomYOffset = CGFloat( arc4random_uniform(150))
         //for every y-value on the bezier curve
        // add our random y offset so that each individual animation
        // will appear at a different y-position
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 188,y: 623 + randomYOffset))
        path.addCurve(to: CGPoint(x: 200, y: -50 + randomYOffset), controlPoint1: CGPoint(x: 220, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 0, y: 110 + randomYOffset))
        // create the animation
                    let anim = CAKeyframeAnimation(keyPath: "position")
                    anim.path = path.cgPath
                    anim.rotationMode = kCAAnimationRotateAuto
                    anim.repeatCount = Float.infinity
                    anim.duration = 5.0
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 106,y: 623 + randomYOffset))
        path2.addCurve(to: CGPoint(x: 200, y: -80 + randomYOffset), controlPoint1: CGPoint(x: 320, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 210, y: 110 + randomYOffset))
        // create the animation
        let anim2 = CAKeyframeAnimation(keyPath: "position")
        anim2.path = path2.cgPath
        anim2.rotationMode = kCAAnimationRotateAuto
        anim2.repeatCount = Float.infinity
        anim2.duration = 5.0
        
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 48,y: 605 + randomYOffset))
        path3.addCurve(to: CGPoint(x: 200, y: -100 + randomYOffset), controlPoint1: CGPoint(x: 420, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 300, y: 110 + randomYOffset))
        // create the animation
        let anim3 = CAKeyframeAnimation(keyPath: "position")
        anim3.path = path3.cgPath
        anim3.rotationMode = kCAAnimationRotateAuto
        anim3.repeatCount = Float.infinity
        anim3.duration = 5.0
        
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 147,y: 537 + randomYOffset))
        path4.addCurve(to: CGPoint(x: 200, y: -50 + randomYOffset), controlPoint1: CGPoint(x: 110, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 350, y: 110 + randomYOffset))
        // create the animation
        let anim4 = CAKeyframeAnimation(keyPath: "position")
        anim4.path = path4.cgPath
        anim4.rotationMode = kCAAnimationRotateAuto
        anim4.repeatCount = Float.infinity
        anim4.duration = 5.0
        
        let path5 = UIBezierPath()
        path5.move(to: CGPoint(x: 241,y: 548 + randomYOffset))
        path5.addCurve(to: CGPoint(x: 200, y: -50 + randomYOffset), controlPoint1: CGPoint(x: 70, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 50, y: 110 + randomYOffset))
        // create the animation
        let anim5 = CAKeyframeAnimation(keyPath: "position")
        anim5.path = path5.cgPath
        anim5.rotationMode = kCAAnimationRotateAuto
        anim5.repeatCount = Float.infinity
        anim5.duration = 5.0
        
        let path6 = UIBezierPath()
        path6.move(to: CGPoint(x: 264,y: 623 + randomYOffset))
        path6.addCurve(to: CGPoint(x: 200, y: -50 + randomYOffset), controlPoint1: CGPoint(x: 300, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 100, y: 110 + randomYOffset))
        // create the animation
        let anim6 = CAKeyframeAnimation(keyPath: "position")
        anim6.path = path6.cgPath
        anim6.rotationMode = kCAAnimationRotateAuto
        anim6.repeatCount = Float.infinity
        anim6.duration = 5.0
        
        self.yellowView.layer.add(anim3, forKey: "start")
         self.blackView.layer.add(anim5, forKey: "animate position along path")
         self.greyview.layer.add(anim2, forKey: "animate position along path")
         self.greenView.layer.add(anim, forKey: "animate position along path")
        
        self.blueView.layer.add(anim4, forKey: "animate position along path")
        self.pinkView.layer.add(anim6, forKey: "animate position along path")
       
        
                    // each square will take between 4.0 and 8.0 seconds
                    // to complete one animation loop
                    anim.duration = Double(arc4random_uniform(40)+30) / 10
                    anim2.duration = Double(arc4random_uniform(40)+30) / 10
        anim3.duration = Double(arc4random_uniform(40)+30) / 10
        anim4.duration = Double(arc4random_uniform(40)+30) / 10
        anim5.duration = Double(arc4random_uniform(40)+30) / 10
        anim6.duration = Double(arc4random_uniform(40)+30) / 10
        
                    // stagger each animation by a random value
                    // `290` was chosen simply by experimentation
                    anim.timeOffset = Double(arc4random_uniform(290))
                    anim2.timeOffset = Double(arc4random_uniform(290))
        anim3.timeOffset = Double(arc4random_uniform(290))
        anim4.timeOffset = Double(arc4random_uniform(290))
        anim5.timeOffset = Double(arc4random_uniform(290))
        anim6.timeOffset = Double(arc4random_uniform(290))
        
        
        
    
    }

   
}
