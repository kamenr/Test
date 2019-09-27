//
//  ContactSource.swift
//  BoostTest
//
//  Created by Kah Lam on 25/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import Foundation
import UIKit

//class GenericDataSource<T> : NSObject {
//    var data: DynamicValue<[T]> = DynamicValue([])
//}
//
//class CurrencyDataSource : GenericDataSource<ContactModel>, UITableViewDataSource {
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.value.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CurrencyCell", for: indexPath) as! ContactCell
//
//        let contact = self.data.value[indexPath.row]
//        cell.contactData = contact
//
//        return cell
//    }
//}
