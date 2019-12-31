//
//  ContentView.swift
//  Mojaz
//
//  Created by Moski Doski on 12/16/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    let login = ContentView()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                LottieView(filename: "logo-lottie")
                    .frame(width: 183, height: 73)
                Text("أخبار لك أنت. لا داعي للنشرة.")
                    .font(Theme.Fonts.onBoardingContent.font)
                Spacer()
                SpinnerView()
                Spacer()
                Image("retro-TV")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }.edgesIgnoringSafeArea(.bottom)
            .onAppear(perform: {
                self.gotoLoginScreen(time: 2.5)
            })
        }
    }
    
    func gotoLoginScreen(time: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
            let scene = UIApplication.shared.connectedScenes.first
            if let sd : SceneDelegate = (scene?.delegate as? SceneDelegate) {
                sd.set(rootViewTo: self.login)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
