//
//  MojazCore.swift
//  MojazCore
//
//  Created by Moski Doski on 1/1/20.
//

import Foundation

/// Dependency container used to resolve instances.
///
/// Implement and use as root instance factory.
public protocol MojazCore {
    func dependency() -> ConstantsType
    func dependencyStore() -> ConstantsStore
    
    func dependency() -> Theme
}

// MARK: - Preferences
public extension MojazCore {
    
    func dependency() -> ConstantsType {
        Constants(store: dependencyStore())
    }
}

// MARK: - Providers

public extension MojazCore {
    
    func dependency() -> LogProviderType {
        LogProvider(stores: dependency())
    }
    
    func dependency() -> [LogStore] {
        let constants: ConstantsType = dependency()
        let minLogLevel: LogAPI.Level = constants.environment == .production ? .info : .debug
        
        return [
            LogConsoleStore(
                minLevel: constants.environment == .production ? .none : minLogLevel
            ),
            LogOSStore(
                minLevel: minLogLevel,
                subsystem: Bundle.main.bundleIdentifier ?? "MojazCore",
                category: "Application"
            )
        ]
    }
}
