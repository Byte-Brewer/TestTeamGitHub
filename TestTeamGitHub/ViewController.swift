//
//  ViewController.swift
//  TestTeamGitHub
//
//  Created by Nazar on 14.02.17.
//  Copyright © 2017 Nazar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DimaID") as! DimaViewController
    let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NazarID") as! NazarViewController
    
    
    @IBOutlet weak var segContOutlet: UISegmentedControl!
    @IBAction func segmentController(_ sender: UISegmentedControl, forEvent event: UIEvent) {
        switch segContOutlet.selectedSegmentIndex {
        case 0:
            self.present(secondVC, animated: true, completion: nil)
        case 1:
            self.present(thirdVC, animated: true, completion: nil)
        default: break
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

