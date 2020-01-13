//
//  OnBoardingTopicSelectionView.swift
//  Mojaz
//
//  Created by Moski Doski on 1/3/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import SwiftUI
import MojazCore

struct OnBoardingTopicSelectionView: View {
    @ObservedObject var onBoardingRouter: OnBoardingRouter
    let render: OnBoardingRender
    let theme: Theme
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("ما المواضيع المهمة بالنسبة لك؟")
                .foregroundColor(theme.labelColor.color())
                .font(theme.getFont(type: .bold, size: 22))
            
            
            ZStack {
                CardView(title: "View1", color: .blue)
                    .offset(x: 0, y: -20)
                    .rotation3DEffect(Angle(degrees: -4), axis: (x: 0, y: 0.25, z: 1))
                    .scaleEffect(0.90)
                CardView(title: "View2", color: .red)
                    .offset(x: 0, y: -10)
                    .rotation3DEffect(Angle(degrees: 2), axis: (x: 0, y: 0.25, z: 1))
                    .scaleEffect(0.95)
                CardView(title: "View3", color: .green)
                .offset(x: 0, y: 0)
                .rotation3DEffect(Angle(degrees: -2), axis: (x: 0, y: 0.25, z: 1))
                .scaleEffect(1)
            }
            .offset(x: 0, y: 80)
            
            Spacer()
        }
    }
}

struct CardView : View {
    
    let title: String
    let color: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .cornerRadius(10)
                .frame(width: 320, height: 210)
            
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }.shadow(radius: 6)
    }
}


struct OnBoardingTopicSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingTopicSelectionView(
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
