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
//    let service: Services
//    let contacts: DynamicValue<[ContactModel]>
    
    
//    init(_ service: Services, _ contact: DynamicValue<[ContactModel]>) {
//        self.service = service
//        self.contacts = contact
//    }
    
    
    public func loadData() -> [ContactModel]{
        let peoples: [ContactModel]
        let mainUrl = Bundle.main.url(forResource: "data", withExtension: ".json")
        do{
            let jsonData = try Data(contentsOf: mainUrl!)
            let decoder = JSONDecoder()
            peoples =  try decoder.decode([ContactModel].self, from: jsonData)
             return peoples
         } catch {}
       return []
    }
}

//protocol ContactViewModelProtocol {
//    var id: Observable<String> { get }
//    var firstName: Observable<String> { get }
//    var lastName: Observable<String> { get }
//    var email: Observable<String> { get }
//    var phone: Observable<String> { get }
//
//}

