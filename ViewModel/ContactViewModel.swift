//
//  ContactViewModel.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 16/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import Foundation

class ContactViewModel: ContactViewModelProtocol {
    
    let contact: ContactModel
    var id: Observable<String>
    
    var firstName: Observable<String>
    
    var lastName: Observable<String>
    
    var email: Observable<String>
    
    var phone: Observable<String>
    
    init(_ contact: ContactModel) {
        self.contact = contact
        
        self.id = Observable(contact.id!)
        self.firstName = Observable(contact.firstName!)
        self.lastName = Observable(contact.lastName!)
        self.email = Observable(contact.email!)
        self.phone = Observable(contact.phone!)

    }
}

protocol ContactViewModelProtocol {
    var id: Observable<String> { get }
    var firstName: Observable<String> { get }
    var lastName: Observable<String> { get }
    var email: Observable<String> { get }
    var phone: Observable<String> { get }

}

