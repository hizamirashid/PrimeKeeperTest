//
//  ViewController.swift
//  PrimeKeeperTest
//
//  Created by Norhizami  on 04/03/2018.
//  Copyright © 2018 Media Prima Digital - Norhizami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var settingsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Home"
        settingsBtn.addTarget(self, action: #selector(showSettingsAlert), for: .touchUpInside)
    }
    
    @objc func showSettingsAlert() {
        
        let uiAlert = UIAlertController(title: "Settings", message: "Going to Screen?", preferredStyle: UIAlertControllerStyle.alert)
        
        uiAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        uiAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { action in
            self.performSegue(withIdentifier: "segueSettings", sender: self)
        }))
        self.present(uiAlert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

