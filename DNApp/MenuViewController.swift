//
//  MenuViewController.swift
//  DNApp
//
//  Created by Charles Harring on 8/16/15.
//  Copyright (c) 2015 Charles Harring. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var dialogView: DesignableView!


    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    
        dialogView.animation = "fall"
        dialogView.animate()
    }

}