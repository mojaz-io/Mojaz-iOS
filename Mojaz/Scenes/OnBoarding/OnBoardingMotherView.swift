//
//  OnBoardingMotherView.swift
//  Mojaz
//
//  Created by Moski Doski on 1/3/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import SwiftUI
import MojazCore

struct OnBoardingMotherView: View {
    @ObservedObject var onBoardingRouter: OnBoardingRouter
    
    let render: OnBoardingRender
    let theme: Theme
    
    var body: some View {
        ZStack {
            if onBoardingRouter.currentPage == "page1" {
                render.onBoardingNotice(router: self.onBoardingRouter)
            }else {
                render.onBoardingTopicSelection(router: self.onBoardingRouter)
            }
        }
    }
}

struct OnBoardingMotherView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingMotherView(
            onBoardingRouter: OnBoardingRouter(),
            render: OnBoardingRender(
                parent: SceneRender(
                    core: AppCore()
                )
            ),
            theme: AppCore().dependency()
        )
    }
}

