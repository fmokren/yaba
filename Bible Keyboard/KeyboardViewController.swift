//
//  KeyboardViewController.swift
//  Bible Keyboard
//
//  Created by Frederic Mokren on 6/17/15.
//  Copyright (c) 2015 Frederic Mokren. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var keyButton: UIButton!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        
        NSLog("iOS Model %@", UIDevice.currentDevice().model)
        NSLog("iOS Name %@", UIDevice.currentDevice().name)
        
        super.viewDidLoad()
        
        let nib = UINib(nibName: "LayoutView", bundle: nil)
        var layoutView: UIView
        layoutView = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        var b = layoutView.translatesAutoresizingMaskIntoConstraints
        view.addSubview(layoutView)
        layoutView.backgroundColor = view.backgroundColor
        
        view.addConstraint(NSLayoutConstraint(item: layoutView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0.0))
        
        view.addConstraint(NSLayoutConstraint(item: layoutView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0))
        
        view.addConstraint(NSLayoutConstraint(item: layoutView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 1.0, constant: 0.0))
        
        view.addConstraint(NSLayoutConstraint(item: layoutView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Height, multiplier: 1.0, constant: 0.0))
        
        /*self.keyButton = UIKeyboardButton.buttonWithType(.System) as! UIKeyboardButton
        
        //self.keyButton.frame = CGRectMake(10.0, 10.0, 30.0, 30.0)
        
        self.keyButton.layer.borderWidth = 0.0
        self.keyButton.layer.cornerRadius = 5.0
        self.keyButton.backgroundColor = .whiteColor()
        self.keyButton.setTitle("E", forState: .Normal)
        self.keyButton.sizeToFit()
        self.keyButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addSubview(self.keyButton)
    
        NSLog("(%f, %f)", self.view.frame.size.width, self.view.frame.size.height);
        
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton.buttonWithType(.System) as! UIButton
    
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.setTranslatesAutoresizingMaskIntoConstraints(false)
    
        self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(self.nextKeyboardButton)
    
        var nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
        var nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    
        var textColor: UIColor
        let proxy = self.textDocumentProxy 
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        //self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    }

    @IBAction func keyboardButtonPressed(sender: UIButton)
    {
        
    }
    
    @IBAction override func advanceToNextInputMode() {
        super.advanceToNextInputMode()
    }
}
