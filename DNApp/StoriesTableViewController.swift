//
//  StoriesTableViewController.swift
//  DNApp
//
//  Created by Charles Harring on 8/12/15.
//  Copyright (c) 2015 Charles Harring. All rights reserved.
//

import UIKit

class StoriesTableViewController: UITableViewController, StoryTableViewCellDelegate {
    
    let transitionManager = TransitionManager()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    @IBAction func menuButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("MenuSegue", sender: self)
    }
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("LoginSegue", sender: self)  
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("StoryCell") as! StoryTableViewCell
        
        let story = data[indexPath.row]
        cell.configureWithStory(story)
        
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("WebSegue", sender: indexPath)
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    

    
    
    // MARK: StoryTableViewCellDelegate
    
    func storyTableViewCellDidTouchUpvote(cell: StoryTableViewCell, sender: AnyObject) {
        // TODO: Implement Upvote

    }
    func storyTableViewCellDidTouchComment(cell: StoryTableViewCell, sender: AnyObject) {
        performSegueWithIdentifier("CommentsSegue", sender: self)
    }


//MARK: Misc

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "CommentsSegue" {
            let toView = segue.destinationViewController as! CommentsTableViewController
            let indexPath = tableView.indexPathForCell(sender as! UITableViewCell)!
            toView.story = data[indexPath.row]
        }
        if segue.identifier == "WebSegue" {
            let toView = segue.destinationViewController as! WebViewController
            let indexPath = sender as! NSIndexPath
            let url = data[indexPath.row]["url"].string!
            toView.url = url
            
            
             UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: UIStatusBarAnimation.Fade)
            
                toView.transitioningDelegate = transitionManager
        }
        
        
        
        
        
        
        
    }
    
    
    
    

}



















