//
//  SceneDelegate.swift
//  Mojaz
//
//  Created by Moski Doski on 12/16/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import UIKit
import MojazCore
import SwiftUI

class SceneDelegate: ScenePluggableDelegate {
    private lazy var log: LogProviderType = core.dependency()
        
    override func plugins() -> [ScenePlugin] {[
        LoggerPlugin(log: log)
    ]}
}

// MARK: - Events

extension SceneDelegate {
    
    override func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        super.scene(scene, willConnectTo: session, options: connectionOptions)
        guard let scene = scene as? UIWindowScene else { return }
        
        // Build and assign main window
        window = UIWindow(windowScene: scene)
        defer { window?.makeKeyAndVisible() }
        
        // Assign default view
        set(rootViewTo: render.launchSplash())
        //set(rootViewTo: render.launchMain())
    }
}


// MARK: - Helpers

extension SceneDelegate {
    
    /// Assign root view to window. Adds any environment objects if needed.
    func set<T: View>(rootViewTo view: T) {
        window?.rootViewController = UIHostingController(
            rootView: view
        )
    }
}
