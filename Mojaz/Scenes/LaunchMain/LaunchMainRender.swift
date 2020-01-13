//
//  LaunchMainRender.swift
//  Mojaz
//
//  Created by Moski Doski on 1/3/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import MojazCore
import SwiftUI

/// Sub-render instead of exposing entire root scene render to view.
struct LaunchMainRender: RenderType {
    private let parent: SceneRender
    
    init(parent: SceneRender) {
        self.parent = parent
    }
}
