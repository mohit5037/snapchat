//
//  SnapsViewController.swift
//  SnapChat
//
//  Created by Mohit on 02/04/20.
//  Copyright © 2020 Practise. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
