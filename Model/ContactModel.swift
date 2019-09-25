//
//  ContactModel.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 14/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import Foundation

struct ContactModel: Codable {
    var id: String?
    var firstName: String?
    var lastName: String?
    var email: String?
    var phone: String?
    //var contactdata : [ContactModel]?

//    init() {
//        let mainUrl = Bundle.main.url(forResource: "data", withExtension: ".json")
//        do{
//            let jsonData = try Data(contentsOf: mainUrl!)
//            let decoder = JSONDecoder()
//            contactdata =  try decoder.decode([ContactModel].self, from: jsonData)
//        } catch {}
//    }
    public init(id: String,
                firstname: String,
                lastname: String,
                email: String,
                phone: String) {

        self.id = id
        self.firstName = firstname
        self.lastName = lastname
        self.email = email
        self.phone = phone
    }
}

