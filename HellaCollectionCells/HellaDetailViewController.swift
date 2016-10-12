//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Tameika Lawrence on 10/11/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit



class HellaDetailViewController: UIViewController {
    
    @IBOutlet weak var numLabel: UILabel!
    
    
    var numberDetail = String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
}

    override func viewWillAppear(_ animated: Bool) {
        
        numLabel.text = numberDetail
        navigationItem.title = numberDetail
    }
    
    

}
