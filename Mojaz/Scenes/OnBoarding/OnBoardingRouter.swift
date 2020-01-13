//
//  OnBoardingRouter.swift
//  Mojaz
//
//  Created by Moski Doski on 1/3/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class OnBoardingRouter: ObservableObject {
    let objectWillChange = PassthroughSubject<OnBoardingRouter,Never>()
    
    var currentPage: String = "page1" {
        didSet {
            objectWillChange.send(self)
        }
    }
}
