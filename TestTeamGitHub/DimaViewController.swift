//
//  DimaViewController.swift
//  TestTeamGitHub
//
//  Created by Nazar on 14.02.17.
//  Copyright © 2017 Nazar. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func textSendData(data: AnyObject)
}

class DimaViewController: UIViewController {

    var delegate: SendDataDelegate?
    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
    }

    @IBAction func backToVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.textSendData(data: textFieldOutlet.text! as AnyObject)
    }
    //Test if it's works as team
}
