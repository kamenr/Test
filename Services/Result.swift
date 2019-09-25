//
//  Result.swift
//  BoostTest
//
//  Created by Kah Lam on 25/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import Foundation

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}
