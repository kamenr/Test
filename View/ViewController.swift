//
//  ViewController.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 12/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import UIKit

class ViewController: UITableViewController{
    
    var contacts: ContactViewModel{
        didSet{
            contacts.id.bindAndFire {
                [unowned self] in
                self.textbox.text = $0
            }
            contacts.firstName.bindAndFire {
                [unowned self] in
                self.textbox.text = $0

            }
            contacts.lastName.bindAndFire {
                [unowned self] in
                self.textbox.text = $0

            }
            contacts.email.bindAndFire {
                [unowned self] in
                self.textbox.text = $0

            }
            contacts.phone.bindAndFire {
                [unowned self] in
                self.textbox.text = $0

            }

        }
    }
    var contactData: ContactViewModel?
    var contactModel: ContactModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(contactData!.firstName)
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let contact = contactData[indexPath.row]
       // print(contact.firstName.value)
        //if let member = contact as? ContactModel
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactCell
        //cell.setup(name: contact.firstName.value)
        return cell
    }

}
    


