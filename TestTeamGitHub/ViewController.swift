//
//  ViewController.swift
//  TestTeamGitHub
//
//  Created by Nazar on 14.02.17.
//  Copyright © 2017 Nazar. All rights reserved.
//

import UIKit

protocol DataSendToAnotherVCProtocol {
    func dataSendToAnotherVC(data: AnyObject)
}

class ViewController: UIViewController, SendDataDelegate {

    let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DimaID") as! DimaViewController
    let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NazarID") as! NazarViewController
    var delegateProtocol: DataSendToAnotherVCProtocol?
    
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
        secondVC.delegate = self
//        thirdVC.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textSendData(data: AnyObject) {
        delegateProtocol?.dataSendToAnotherVC(data: data as AnyObject)
        print("Here we are now: \(data)")
    }
}

