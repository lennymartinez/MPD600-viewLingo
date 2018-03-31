//
//  ViewController.swift
//  viewLingo
//
//  Created by Lenny Martinez on 3/27/18.
//  Copyright © 2018 Lenny Martinez. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet var usernameLabel: UILabel!
    
    @IBAction func onSignOutTapped(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "signOutUserSegue", sender: nil)
        } catch {
            print(error)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let theUsername = Auth.auth().currentUser?.displayName else { return }
        
        usernameLabel.text = "Hello, \(theUsername)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
