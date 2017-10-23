//
//  CarViewController.swift
//  TransformAnimation
//
//  Created by appinventiv on 13/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {
    
    
    @IBAction func heartBtnTap(_ sender: UIButton) {
        
        let footBallObj = self.storyboard?.instantiateViewController(withIdentifier: "FootballVCId") as! FootballVC
        self.navigationController?.pushViewController(footBallObj, animated: true)
        
    }
    
    
    
    @IBOutlet weak var heartImage: UIImageView!
    
    @IBOutlet weak var secondCarFrontView: UIView!
    
    
    @IBOutlet weak var secondCarbackView: UIView!
    
    @IBOutlet weak var secondView: UIView!
    
    
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var frontView: UIView!
    
    @IBOutlet weak var mainView: UIView!
    
    
    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var frontTyre: UIImageView!
    
    
    @IBOutlet weak var backTyre: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frontView.layer.cornerRadius = frontView.frame.height/2
        frontView.clipsToBounds = true
        
        backView.layer.cornerRadius = backView.frame.height/2
        backView.clipsToBounds = true
        
        frontTyre.layer.cornerRadius = frontTyre.frame.height/2
        frontTyre.clipsToBounds = true
        
        frontTyre.layer.cornerRadius = frontTyre.frame.height/2
        frontTyre.clipsToBounds = true
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat], animations: {
            
            let degrees: CGFloat = 90
            let radians = CGFloat(__sinpi(degrees.native/180.0))
            self.frontView.transform = CGAffineTransform(rotationAngle: radians)
            self.backView.transform = CGAffineTransform(rotationAngle: radians)
            self.secondCarFrontView.transform = CGAffineTransform(rotationAngle: radians)
            self.secondCarbackView.transform = CGAffineTransform(rotationAngle: radians)
            
            
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.1, options: [.repeat],
                       animations: {
                        self.mainView.center.x += 400
                        self.secondView.center.x += 400
        },
                       completion: nil
        )
        
//        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
//
//            self.heartImage.transform = CGAffineTransform(scaleX: 2, y: 2)
//
//           // self.heartImage.transform = CGAffineTransform(scaleX: 1, y: 1)
//
//
//        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 5, initialSpringVelocity: 20, options: [.repeat, .autoreverse], animations: {
             // self.heartImage.transform = CGAffineTransform(translationX: 20, y: 20)
            self.heartImage.transform = CGAffineTransform(scaleX: 2, y: 2)
        }, completion: nil)
        
    }
    
    
    
    
    
}
