//
//  Converter.swift
//  BoostTest
//
//  Created by Kah Lam on 25/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import Foundation

struct Converter {
    
    let id : String
    let firstName : String
    let firstName : String
    let firstName : String
    let rates : [ContactModel]
}

extension Converter : Parceable {
    
    static func parseObject(dictionary: [String : AnyObject]) -> Result<Converter, ErrorResult> {
        if let id = dictionary["id"] as? String,
            let firstname = dictionary["firstName"] as? String,
            let rates = dictionary["rates"] as? [String: Double] {
            
//            let finalRates : [ContactModel] = rates.flatMap({ ContactModel(id: $0.key, firstName: $0.value, lastName: <#String#>, email: <#String#>, phone: <#String#>) })
            let conversion = Converter(base: id, date: firstname, rates: rates)
//
            return Result.success(conversion)
            
        } else {
            return Result.failure(ErrorResult.parser(string: "Unable to parse conversion rate"))
        }
    }
}
