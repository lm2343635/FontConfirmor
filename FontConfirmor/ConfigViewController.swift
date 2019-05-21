//
//  ConfigViewController.swift
//  FontConfirmor
//
//  Created by Meng Li on 2019/05/21.
//  Copyright © 2019 MuShare. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var weightSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? FontsTableViewController {
            controller.text = textField.text
            controller.weight = weightSegmentedControl.selectedSegmentIndex
        }
    }
    
}
