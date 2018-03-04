//
//  SettingsViewController.swift
//  PrimeKeeperTest
//
//  Created by Norhizami  on 04/03/2018.
//  Copyright © 2018 Media Prima Digital - Norhizami. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Settings"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showHomeAlert() {
        
        let uiAlert = UIAlertController(title: "Home", message: "Going to Screen?", preferredStyle: UIAlertControllerStyle.alert)
        
        uiAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            
        }))
        
        uiAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { action in
            
            
        }))
        self.present(uiAlert, animated: true, completion: nil)
    }
}
