//
//  ContentView.swift
//  Mojaz
//
//  Created by Moski Doski on 12/16/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import SwiftUI
import MojazCore

struct SplashView: View {
    @State private var isActive = false
    
    let render: SplashRender
    let theme: Theme
    
    var body: some View {
            VStack(alignment: .center) {
                Spacer()
                LottieView(filename: "logo-lottie")
                    .frame(width: 183, height: 73)
                Text("أخبار لك أنت. لا داعي للنشرة.")
                    .font(theme.getFont(type: .plain, size: 14.0))
                Spacer()
                SpinnerView()
                Spacer()
                Image("retro-TV")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }.edgesIgnoringSafeArea(.bottom)
            .onAppear(perform: {
                self.goToBoarding(time: 2.5)
            })
    }
    
    func goToBoarding(time: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
            self.render.onBoarding()
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(
            render: SplashRender(
                parent: SceneRender(
                    core: AppCore()
                )
            ),
            theme: AppCore().dependency()
        )
    }
}
