//
//  OnBoardingRender.swift
//  Mojaz
//
//  Created by Moski Doski on 1/2/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import MojazCore
import SwiftUI

struct OnBoardingRender: RenderType {
    private let parent: SceneRender
    
    init(parent: SceneRender) {
        self.parent = parent
    }
}

extension OnBoardingRender {
    func onBoardingNotice(router: OnBoardingRouter) -> some View {
        parent.onBoardingNotice(router: router)
    }
    
    func onBoardingTopicSelection(router: OnBoardingRouter) -> some View {
        parent.onBoardingTopicSelection(router: router)
    }
}
