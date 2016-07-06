//
//  ViewController.swift
//  YABA
//
//  Created by Frederic Mokren on 6/16/15.
//  Copyright (c) 2015 Frederic Mokren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchText: UITextField?
    @IBOutlet var webView: UIWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapGo()
    {
        if let queryString = searchText?.text
        {
            var nsQueryString = queryString as NSString
            
            nsQueryString = nsQueryString.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
            
            let urlString = "https://www.biblegateway.com/passage/?search=\(nsQueryString)&version=NIV"
            
            let url = NSURL(string: urlString)
            
            let urlRequest = NSURLRequest(URL: url!)
            
            webView?.loadRequest(urlRequest)
        }
    }
}

