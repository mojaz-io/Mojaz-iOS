//
//  SceneRender.swift
//  Mojaz
//
//  Created by Moski Doski on 1/1/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import MojazCore
import SwiftUI

/// Root composer used to construct all views.
struct SceneRender {
    private let core: MojazCore
    // private let state: AppState
    // private let middleware: [MiddlewareType]
    
    init(core: MojazCore) {
        self.core = core
    }
}

// MARK: - Scenes

extension SceneRender {
    
    func launchSplash() -> some View {
        SplashView(
            // Expose only some of the composer by wrapping it
            render: SplashRender(parent: self),
            theme: core.dependency()
        )
    }
}

extension SceneRender {
    func launchOnBoarding () {
        let scene = UIApplication.shared.connectedScenes.first
        if let sd : SceneDelegate = (scene?.delegate as? SceneDelegate) {
            sd.set(rootViewTo: onBoardingMonther())
        }
    }
    
    func onBoardingMonther () -> some View {
        OnBoardingMotherView(
            onBoardingRouter: OnBoardingRouter(),
            render: OnBoardingRender(parent: self),
            theme: core.dependency()
        )
    }
    
    func onBoardingNotice (router: OnBoardingRouter) -> some View {
        OnBoardingNoticeView(
            onBoardingRouter: router,
            render: OnBoardingRender(parent: self),
            theme: core.dependency()
        )
    }
    
    func onBoardingTopicSelection (router: OnBoardingRouter) -> some View {
        OnBoardingTopicSelectionView(
            onBoardingRouter: router,
            render: OnBoardingRender(parent: self),
            theme: core.dependency()
        )
    }
}

extension SceneRender {
    func launchMain() -> some View {
        LaunchMainView(render: LaunchMainRender(parent: self), router: LaunchMainRouter())
    }
}
