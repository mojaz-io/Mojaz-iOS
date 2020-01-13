//
//  LogConsoleStore.swift
//  MojazCore
//
//  Created by Moski Doski on 12/31/19.
//

import Foundation

/// Sends a message to the IDE console.
public struct LogConsoleStore: LogStore {
    public let minLevel: LogAPI.Level
    
    public init(minLevel: LogAPI.Level) {
        self.minLevel = minLevel
    }
}

public extension LogConsoleStore {
    
    func write(_ level: LogAPI.Level, with message: String, path: String, function: String, line: Int, context: [String: Any]?) {
        let prefix: String
        
        switch level {
        case .verbose:
            prefix = "💜 \(timestamp: Date()) VERBOSE"
        case .debug:
            prefix = "💚 \(timestamp: Date()) DEBUG"
        case .info:
            prefix = "💙 \(timestamp: Date()) INFO"
        case .warning:
            prefix = "💛 \(timestamp: Date()) WARNING"
        case .error:
            prefix = "❤️ \(timestamp: Date()) ERROR"
        case .none:
            return
        }
        
        print("\(prefix) \(format(message, path, function, line, context))")
    }
}
