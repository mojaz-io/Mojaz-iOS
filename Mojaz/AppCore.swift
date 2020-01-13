//
//  AppCore.swift
//  Mojaz
//
//  Created by Moski Doski on 12/31/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import Foundation
import MojazCore

struct AppCore: MojazCore {
    private let environment: Environment
    //let theme: Theme
    
    init() {
        #if DEBUG
        environment = .development
        #else
        environment = .production
        #endif
    }
    
    func dependencyStore() -> ConstantsStore {
        ConstantsMemoryStore(
            environment: environment,
            minLogLevel: environment == .production ? .warning : .debug
        )
    }
    
    func dependency() -> [LogStore] {
        let constants: ConstantsType = dependency()
        
        return [
            LogConsoleStore(
                minLevel: constants.environment == .production ? .none
                    : constants.minLogLevel
            ),
            LogOSStore(
                minLevel: constants.minLogLevel,
                subsystem: Bundle.main.bundleIdentifier ?? "Mojaz",
                category: "Application"
            )
        ]
    }
    
    
    func dependency() -> Theme {
        DefaultTheme()
    }
}
