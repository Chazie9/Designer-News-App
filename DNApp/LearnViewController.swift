//
//  LearnViewController.swift
//  DNApp
//
//  Created by Charles Harring on 8/16/15.
//  Copyright (c) 2015 Charles Harring. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController {

    @IBOutlet weak var dialogView: DesignableImageView!
    
    
    func openURL(url: String) {
        let targetURL = NSURL(string: url)
        UIApplication.sharedApplication().openURL(targetURL!)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
     
        dialogView.animate()
    
    }
    
    @IBAction func twitterButtonDidTouch(sender: AnyObject) {
        openURL("http://www.twitter.com/codelaborative")
    }
    
    @IBAction func learnButtonDidTouch(sender: AnyObject) {
        bookImageView.animation = "pop"
        bookImageView.animate()
        
        
        openURL("http://designcode.io")
    }
    
    
    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "fall"
        dialogView.animateNext {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    
    
    }


}