//
//  LaunchMainRouter.swift
//  Mojaz
//
//  Created by Moski Doski on 1/4/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class LaunchMainRouter: ObservableObject {
    let objectWillChange = PassthroughSubject<LaunchMainRouter,Never>()
    
    var currentPage: LaunchMainTab = .home {
        didSet {
            objectWillChange.send(self)
        }
    }
}

enum LaunchMainTab: Int {
    case home
    case favorite
    case search
    case profile
}
