//
//  DetailView.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 27/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import UIKit

class DetailView: UIViewController{
    
    @IBOutlet weak var item: UINavigationItem!
    var contactDetail : ContactModel?
    
    @IBOutlet weak var firstNameLabel: UITextField!
    @IBOutlet weak var lastNameLabel: UITextField!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var phoneLabel: UITextField!
    
    override func viewDidLoad() {
        item.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(addTapped))
        
        if let detail = contactDetail{
            firstNameLabel.text = detail.firstName
            lastNameLabel.text = detail.lastName
            emailLabel.text = detail.email
            phoneLabel.text = detail.phone
        }
    }
    
    @objc func addTapped() {
        print(contactDetail!.email)
    }
}
