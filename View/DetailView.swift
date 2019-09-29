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
    var contactDetail : [ContactModel]!
    var currentIndex: Int!
    @IBOutlet weak var firstNameLabel: UITextField!
    @IBOutlet weak var lastNameLabel: UITextField!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var phoneLabel: UITextField!
    
    override func viewDidLoad() {
        item.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(addTapped))
        item.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelTapped))

        if let detail = contactDetail{
            firstNameLabel.text = detail[currentIndex].firstName
            lastNameLabel.text = detail[currentIndex].lastName
            emailLabel.text = detail[currentIndex].email
            phoneLabel.text = detail[currentIndex].phone
        }
    }
     @objc func cancelTapped() {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func addTapped() {
        //print(currentIndex)
        if contactDetail != nil  {
            //print(contactDetail)
            contactDetail[currentIndex].firstName = firstNameLabel!.text
            contactDetail[currentIndex].lastName = lastNameLabel!.text
            contactDetail[currentIndex].phone = phoneLabel!.text
            contactDetail[currentIndex].email = emailLabel!.text
        }
  
        writeToFile(contact: contactDetail!)
        
       
    }
    
    func writeToFile(contact: [ContactModel]) {

        let mainUrl = Bundle.main.url(forResource: "data", withExtension: ".json")!
        
        let json = JSON(contact)
        let hello = json.arrayObject
        let str = hello?.description
        let data = str!.data(using: String.Encoding.utf8)!
        do{
        try data.write(to: mainUrl, options: [])
            } catch {
                    print(error)
    }
    
    }
}
//        do{
//        let data = try JSONSerialization.data(withJSONObject: contact, options: [])
//            try data.write(to: mainUrl, options: [])
//    } catch {
//            print(error)
//        }


