//
//  ViewController.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 12/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    

    var contactData = ContactViewModel()
    var contactModel: [ContactModel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        contactModel = contactData.loadData()
        //print(contactModel[0].email!)
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contactModel[indexPath.row]
       // print(contact.firstName.value)
        //if let member = contact as? ContactModel
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactCell
        cell.setup(contact: contact)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DetailView") as! DetailView
        newViewController.contactDetail = contactModel[indexPath.row]
        self.present(newViewController, animated: true, completion: nil)
        
    }

}
    


