//
//  ViewController.swift
//  RailsRequest
//
//  Created by Richard Tyran on 2/17/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

/// this VC should be where your games playing or create a game

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let token = User.currentUser().token {
            
            println(token)
            
        } else {
            
            // show login view controller
            
            var loginVC = LoginController()
            presentViewController(loginVC, animated: false, completion: nil)
            
        }
        
    }
    
    // called by new game button
    func newGame() {
        
        
        
    }
    
}

class LoginController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let token = User.currentUser().token {
            
            println(token)
            
        }
        
        func login() {
            
            User.currentUser().login("jo@blah.com", password: "password")
            
        }
        
        
        
        func register() {
            
            User.currentUser().register("teach", email: "jo@blah.com", password: "password")
            
        }
        
        // show login view controller
        
    }
    
}

    