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
    
    // IBOutlets
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var modeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set title to navigation title
        self.title = "Settings"
        
        // // add action to button
        homeBtn.addTarget(self, action: #selector(showHomeAlert), for: .touchUpInside)
        
        // set label to their config file
        if let mode = infoForKey("Mode") {
            self.modeLbl.text = mode
        }
    }
    
    // MARK: - BUTTON ACTION
    @objc func showHomeAlert() {
        
        let uiAlert = UIAlertController(title: "Going to Screen", message: "Home", preferredStyle: UIAlertControllerStyle.alert)
        
        uiAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        uiAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { action in
            self.navigationController?.popViewController(animated: true)
        }))
        self.present(uiAlert, animated: true, completion: nil)
    }
    
    // MARK: - FUNCTION read from info plist
    func infoForKey(_ key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
            .replacingOccurrences(of: "\\", with: "")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
