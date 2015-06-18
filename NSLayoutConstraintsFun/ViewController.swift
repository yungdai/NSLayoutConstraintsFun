//
//  ViewController.swift
//  NSLayoutConstraintsFun
//
//  Created by Yung Dai on 2015-06-18.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leftView: UIView!
    @IBOutlet var rightView: UIView!
    
    // set up the iPad constraints
    let leftiPadWidth:CGFloat = 126
    let rightiPadWidth:CGFloat = 235
    
    // set up the iPhone constraints
    let leftiPhoneWidth:CGFloat = 40
    let rightiPhoneWidth:CGFloat = 100
    
    
    // outlets for the left and right views
    @IBOutlet var leftViewWidthConstraint: NSLayoutConstraint!
    @IBOutlet var rightViewWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyIdiumSpecificConstraints()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func applyIdiumSpecificConstraints() {
        
        // check the user device type and then assign the constraints per device
        
        if UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad {
            
            // in case of iPad device
            leftViewWidthConstraint.constant = leftiPadWidth
            rightViewWidthConstraint.constant = rightiPadWidth
          
            
        } else if UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Phone {
            
            // in case of iPhone device
            leftViewWidthConstraint.constant = leftiPhoneWidth
            rightViewWidthConstraint.constant = rightiPhoneWidth
            
        } else {
            
            // in case I just don't know
            leftViewWidthConstraint.constant = 0.0
            rightViewWidthConstraint.constant = 0.0
        }
        
    }


}

