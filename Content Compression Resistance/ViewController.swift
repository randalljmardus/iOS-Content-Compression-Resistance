//
//  ViewController.swift
//  Content Compression Resistance
//
//  Created by Randall Mardus on 2/24/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    let button1 = UIButton()
        button1.setTitle("Button1", forState: .Normal)
        
    let button2 = UIButton()
        button2.setTitle("Some really, really, really long title", forState: .Normal)
        
    button1.backgroundColor = UIColor.redColor()
    button2.backgroundColor = UIColor.blueColor()
        
    button1.translatesAutoresizingMaskIntoConstraints = false
    button2.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button1)
        view.addSubview(button2)
        
        button1.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor).active = true
        button1.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 20).active = true
    
        button2.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 20).active = true
        button2.leadingAnchor.constraintEqualToAnchor(button1.trailingAnchor).active = true
        button2.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor).active = true
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

