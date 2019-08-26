//
//  ViewController.swift
//  FontConfirmor
//
//  Created by Meng Li on 2019/05/21.
//  Copyright © 2019 MuShare. All rights reserved.
//

import UIKit

class FontsTableViewController: UITableViewController {

    var text: String!
    var weight: Int! {
        didSet {
            fontWeight = weights[weight]
        }
    }
    
    let sizes = Array(10...30)
    let weights: [UIFont.Weight] = [.regular, .medium, .semibold, .bold]
    
    var fontWeight: UIFont.Weight!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ["regular", "medium", "semibold", "bold"][weight]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sizes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fontCell", for: indexPath)
        let size = CGFloat(sizes[indexPath.row])
        if let fontLabel = cell.viewWithTag(1) as? UILabel {
            fontLabel.text = String(sizes[indexPath.row])
            fontLabel.font = UIFont(name: "FOT-KafuTechno Std", size: size)
        }
        if let textLabel = cell.viewWithTag(2) as? UILabel {
            textLabel.text = text
            textLabel.font = UIFont(name: "FOT-KafuTechno Std", size: size)
        }
        return cell
    }

}

