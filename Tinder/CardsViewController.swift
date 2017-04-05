//
//  CardsViewController.swift
//  Tinder
//
//  Created by sammanios on 4/5/17.
//  Copyright © 2017 sammanios. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    
    var cardInitialCenter: CGPoint!
    
    @IBOutlet weak var userImageView: UIImageView!
    
    var userImageViewOriginalCenter: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Here we use the method didPan(sender:), which we defined in the previous step, as the action.
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(didPanUserImage(_:)))
        
        // Attach it to a view of your choice. If it's a UIImageView, remember to enable user interaction
        userImageView.isUserInteractionEnabled = true
        userImageView.addGestureRecognizer(panGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func didPanUserImage(_ sender: UIPanGestureRecognizer) {
        let translation  = sender.translation(in: view)
        let velocity = sender.velocity(in: view)
        let location = sender.location(in: view)
        
        if sender.state == .began {
            userImageViewOriginalCenter = userImageView.center
            
            print("Gesture began")
            
            userImageView.transform = userImageView.transform.rotated(by: CGFloat(45 * M_PI / 180))
            
        } else if sender.state == .changed {
            print("Gesture is changing")
            // rotate
                userImageView.transform = CGAffineTransform(rotationAngle: (CGFloat.pi / 8) * (translation.x * 0.01))
                userImageView.center.x = userImageViewOriginalCenter.x + translation.x
                userImageView.center.y = userImageViewOriginalCenter.y + translation.y
        } else if sender.state == .ended {
            print("Gesture ended")
            if (translation.x < -80) {
                print("swipe left")
                userImageView.center.x = -1000
            } else if (translation.x > 80) {
                print("swipe right")
                userImageView.center.x = 1000
            } else
            {
                userImageView.center.x = userImageViewOriginalCenter.x
                userImageView.center.y = userImageViewOriginalCenter.y
                userImageView.transform = CGAffineTransform.identity
                print("normal")
            }
        }
        


    }

}
