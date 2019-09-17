//
//  ContactViewModel.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 16/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//
//hello
import Foundation

class ContactViewModel {
    let contact: ContactModel
   
    public init(contact: ContactModel) {
        
       self.contact = contact
        
    }
    
    public var id: String{
        return contact.id!
    }
    
    public var firstName: String {
        return contact.firstName!
    }
    
    public var lastName: String {
        return contact.lastName!
    }
    
    public var email: String {
        return contact.email!
    }
    
    public var phoneNo: String {
        return contact.phone!
    }
    
    func viewdidload() {
        
    }
}



