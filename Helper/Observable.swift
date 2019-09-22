//
//  Observable.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 17/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import Foundation

class Observable<T> {
    typealias Listener = (T) -> Void
        var listener: Listener?
        
        func bind(listener: Listener?) {
            self.listener = listener
        }
        
        func bindAndFire(listener: Listener?) {
            self.listener = listener
            listener?(value)
        }
        
        var value: T {
            didSet {
                listener?(value)
            }
        }
        
        init(_ v: T) {
            value = v
        }
}
