//
//  NazarViewController.swift
//  TestTeamGitHub
//
//  Created by Nazar on 14.02.17.
//  Copyright © 2017 Nazar. All rights reserved.
//

import UIKit
protocol PassDataProtocol{
    func passData(data: String)
}

class NazarViewController: UIViewController {
    
    var delegatic: PassDataProtocol?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBAction func Button(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegatic?.passData(data: textField.text ?? "If text = nil")
    }
       
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
