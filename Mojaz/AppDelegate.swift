//
//  AppDelegate.swift
//  Mojaz
//
//  Created by Moski Doski on 12/16/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import UIKit
import MojazCore

@UIApplicationMain
class AppDelegate: ApplicationPluggableDelegate {
    override func plugins() -> [ApplicationPlugin] {[
        LoggerPlugin(log: core.dependency())
    ]}
}

// MARK: - Environment Components

private enum Root {
    
    /// Root dependency injection container
    static let core = AppCore()
    
    /// Root application storage
    //static let state = AppState()
    
    /// Root builder for all scenes.
    ///
    ///     NavigationView(
    ///         render.listArticles()
    ///     )
    ///
    /// Create views only through scene renders.
    static let render = SceneRender(
        core: core
    )
}


private extension UIApplicationDelegate {
    var core: MojazCore { Root.core }
}

extension UISceneDelegate {
    var core: MojazCore { Root.core }
    var render: SceneRender { Root.render }
}

