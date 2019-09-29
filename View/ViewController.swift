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
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(self.reload), for: UIControl.Event.valueChanged)
        tableView.refreshControl = refreshControl
        
        contactModel = contactData.loadData()
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
    }
    
    @objc func reload() {
        self.tableView.reloadData()
        self.refreshControl?.endRefreshing()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contactModel[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactCell
        cell.setup(contact: contact)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DetailView") as! DetailView
        newViewController.currentIndex = indexPath.row
        newViewController.contactDetail = contactModel!
        self.present(newViewController, animated: true, completion: nil)
        
    }
    
}



