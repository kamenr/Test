//
//  Result.swift
//  BoostTest
//
//  Created by Kah Lam on 25/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import Foundation

enum ErrorResult: Error {
    case network(string: String)
    case parser(string: String)
    case custom(string: String)
}
