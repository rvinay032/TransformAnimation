//
//  ViewController.swift
//  TransformAnimation
//
//  Created by appinventiv on 13/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var touch = true
    var back: UIImageView!
    var front: UIImageView!     
    
    @IBOutlet weak var cardView: UIView!
    
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    
    @IBOutlet weak var circularViewFirst: UIView!
    
    
    @IBOutlet weak var innerView: UIView!
    
    
    @IBOutlet weak var upperView: UIView!
    
    
    @IBAction func carBtnTap(_ sender: UIButton) {
        
        let carObj = self.storyboard?.instantiateViewController(withIdentifier: "CarViewControllerId") as! CarViewController
        self.navigationController?.pushViewController(carObj, animated: true)
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if (touch) {
            UIView.transition(from: back, to: front, duration: 1, options: UIViewAnimationOptions.transitionCurlUp, completion: nil)
            touch = false
            
        } else {
            UIView.transition(from: front, to: back, duration: 1, options: UIViewAnimationOptions.transitionCurlUp, completion: nil)
            touch = true
            
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circularViewFirst.layer.cornerRadius = circularViewFirst.frame.height/2
        circularViewFirst.clipsToBounds = true
        
        innerView.layer.cornerRadius = innerView.frame.height/2
        innerView.clipsToBounds = true
        
        front = UIImageView(image: UIImage(named: "front.png"))
        back = UIImageView(image: UIImage(named: "back.png"))
        
       cardView.addSubview(back)
        
        
        
//        UIView.animate(withDuration: 1, delay: 0, options: [.repeat], animations: {
//            
//////                        let degrees: CGFloat = 90
//////                        let radians = CGFloat(__sinpi(degrees.native/180.0))
////                        self.cardView.transform = CGAffineTransform(rotationAngle: 6.28318530717959)
////
//           
//                    }, completion: nil)
       
        
//        upperView.layer.cornerRadius = upperView.frame.height/2
//        upperView.clipsToBounds = true
        
        
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
      myAnimation()
            
      
        
    }
    
    func myAnimation() {
        
        
        let animate = {
            
            UIView.animate(withDuration: 0.5, delay: 0.25,options: UIViewAnimationOptions.curveEaseOut,animations: {
                self.circularViewFirst.backgroundColor = .orange
                
                self.circularViewFirst.transform = CGAffineTransform(translationX: -120, y: -200)
                
                
            },completion: { finish in
                
                      self.nestedAnimation()
            })
            
        }
        
        
        UIView.animate(withDuration: 1, delay: 0.1, options: UIViewAnimationOptions.repeat,
                   animations: animate)
        
        
    }
    //////////////////////////// Funtion end  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    func nestedAnimation()
    {
        
        UIView.animate(withDuration: 0.5, delay: 0.25,options: UIViewAnimationOptions.curveEaseOut,animations: {
            self.circularViewFirst.backgroundColor = .red
            
            self.circularViewFirst.transform = CGAffineTransform(translationX: 0, y: -350)}, completion: { finish in
                
                UIView.animate(withDuration: 0.5, delay: 0.25,options: UIViewAnimationOptions.curveEaseOut,animations: {
                    self.circularViewFirst.backgroundColor = .green
                    
                    self.circularViewFirst.transform = CGAffineTransform(translationX: 125, y: -200)}, completion: { finish in
                        
                        UIView.animate(withDuration: 0.5, delay: 0.25,options: UIViewAnimationOptions.curveEaseOut,animations: {
                            self.circularViewFirst.backgroundColor = .yellow
                            
                            self.circularViewFirst.transform = CGAffineTransform(translationX: -4, y: 0)})
                        
                        
                        //        UIView.animate(withDuration: 0.1, delay: 0, options: [.repeat], animations: {
                        //
                        //            let degrees: CGFloat = 90
                        //            let radians = CGFloat(__sinpi(degrees.native/180.0))
                        //            self.upperView.transform = CGAffineTransform(rotationAngle: radians)
                        //
                        //
                        //        }, completion: nil)
                        
                        
                        
                        
                        
                        UIView.animate(withDuration: 1, delay: 0.1, options: [.curveEaseIn],
                                       animations: {
                                        self.innerView.center.y -= 90
                        },
                                       completion: {(true) in
                                        
                                        self.myAnimation()
                                        
                                        
                        })
                        
                })
                
                
        })
        
    }
    
    
    
}
