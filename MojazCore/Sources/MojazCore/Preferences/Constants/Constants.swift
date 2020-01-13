//
//  Constants.swift
//  MojazCore
//
//  Created by Moski Doski on 1/1/20.
//

import Foundation

public struct Constants: ConstantsType {
    private let store: ConstantsStore
    
    public init(store: ConstantsStore) {
        self.store = store
    }
}

public extension Constants {
    var environment: Environment { store.environment}
    var minLogLevel: LogAPI.Level { store.minLogLevel }
}
