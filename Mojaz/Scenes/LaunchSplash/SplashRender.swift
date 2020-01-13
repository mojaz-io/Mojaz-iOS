//
//  SplashRender.swift
//  Mojaz
//
//  Created by Moski Doski on 1/1/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import MojazCore
import SwiftUI


struct SplashRender: RenderType {
    private let parent: SceneRender
    
    init(parent: SceneRender) {
        self.parent = parent
    }
}

extension SplashRender {
    func onBoarding() {
        parent.launchOnBoarding()
    }
}

