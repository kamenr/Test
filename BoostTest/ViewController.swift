//
//  ViewController.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 12/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let service = Services()
    override func viewDidLoad() {
        let contactData = service.loadData()
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }


}

