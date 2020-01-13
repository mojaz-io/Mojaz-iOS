//
//  ConstantsAPI.swift
//  MojazCore
//
//  Created by Moski Doski on 1/1/20.
//

import Foundation

// Namespace
public enum ConstantsAPI {}

public protocol ConstantsStore {
    var environment: Environment { get }
    var minLogLevel: LogAPI.Level { get }
}

public protocol ConstantsType: ConstantsStore {}
