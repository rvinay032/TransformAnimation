//
//  FootballVC.swift
//  TransformAnimation
//
//  Created by appinventiv on 14/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit



class FootballVC: UIViewController {

    
    @IBAction func fishBtnTap(_ sender: UIButton) {
        let fishObj = self.storyboard?.instantiateViewController(withIdentifier: "FishVCId") as! FishVC
        self.navigationController?.pushViewController(fishObj, animated: true)
        
    
    }
    
    
    @IBOutlet weak var footBallView: UIView!
    
    
    @IBOutlet weak var soccerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        footBallView.layer.cornerRadius = footBallView.frame.height/2
        footBallView.clipsToBounds = true
        soccerImage.layer.cornerRadius = soccerImage.frame.height/2
        soccerImage.clipsToBounds = true
        
       
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            
            self.footBallView.transform = CGAffineTransform(translationX: 100, y: -150)
            
        }, completion: nil)
        
       
        
    
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            
            self.footBallView.transform = CGAffineTransform(translationX: -15 , y: -350)
             // self.footBallView.transform = CGAffineTransform(translationX: 100, y: -150)
            
        }, completion: nil)
        
        
        
        }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            
            self.footBallView.transform = CGAffineTransform(translationX: 100, y: -150)
            
        }, completion: nil)
    }
    
    

}
