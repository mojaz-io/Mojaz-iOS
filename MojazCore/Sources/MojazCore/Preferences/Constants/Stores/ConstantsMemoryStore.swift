//
//  ConstantsMemoryStore.swift
//  MojazCore
//
//  Created by Moski Doski on 1/1/20.
//

import Foundation

public struct ConstantsMemoryStore: ConstantsStore {
    public let environment: Environment
    public let minLogLevel: LogAPI.Level
    
    public init(
        environment: Environment,
        minLogLevel: LogAPI.Level
    ) {
        self.environment = environment
        self.minLogLevel = minLogLevel
    }
}
