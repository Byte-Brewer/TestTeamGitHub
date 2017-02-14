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

class DimaViewController: UIViewController, PassDataProtocol {
    
    let sVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NazarID") as! NazarViewController
    
    var delegate: SendDataDelegate?
    
    var test: String = ""
    
    @IBOutlet weak var labelOutlet: UILabel! { didSet { print("didset") } }
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sVC.delegatic = self
        
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelOutlet.text = test
    }
    
    @IBAction func backToVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.textSendData(data: textFieldOutlet.text! as AnyObject)
        
    }
    
    func passData(data: String) {
        test = data
        labelOutlet.text = data
        print(data)
    }
}
