//
//  InterfaceController.swift
//  ConflictResilver WatchKit 1 Extension
//
//  Created by mc110 on 16/2/22.
//  Copyright © 2016年 mc110. All rights reserved.
//

import WatchKit
import Foundation
import Darwin


class InterfaceController: WKInterfaceController {

    @IBOutlet var actionImage: WKInterfaceImage!
    
    @IBAction func playTapped() {
        actionImage.setImageNamed("action")
        actionImage.startAnimatingWithImagesInRange(NSRange(location: 0, length: 3),
            duration: 0.3, repeatCount: 3)
        
        delay(0.9) { () -> () in
            var imageName = self.rand(0, max: 2)
            self.actionImage.setImageNamed("action\(imageName)")
        }
        
    }
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func rand(min: UInt, max: UInt) -> UInt
    {
        var randomNum: UInt = 0
        arc4random_buf(&randomNum, sizeof(UInt))
        
        return min + (randomNum % (max - min))
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC))),
            dispatch_get_main_queue(), closure)
    }

}
