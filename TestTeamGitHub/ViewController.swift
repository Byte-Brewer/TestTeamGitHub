//
//  ViewController.swift
//  TestTeamGitHub
//
//  Created by Nazar on 14.02.17.
//  Copyright © 2017 Nazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segContOutlet: UISegmentedControl!
    @IBAction func segmentController(_ sender: UISegmentedControl, forEvent event: UIEvent) {
        switch segContOutlet.selectedSegmentIndex {
        case 0:
            print("0")
        case 1:
            print("1")
        default: break
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

