//
//  OnBoardingNoticeView.swift
//  Mojaz
//
//  Created by Moski Doski on 12/30/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import SwiftUI
import MojazCore

struct OnBoardingNoticeView: View {
    @ObservedObject var onBoardingRouter: OnBoardingRouter
    let render: OnBoardingRender
    let theme: Theme

    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("أهلا بك!")
                .foregroundColor(theme.labelColor.color())
                .font(theme.getFont(type: .bold, size: 36.0))
            Image("reading-side-doodle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.leading, 50)
                .padding(.trailing, 50)
            Spacer()
            Text("نحتاج لمعرفة اهتماماتك لتحضير موجز خاص بك أنت فقط")
                .foregroundColor(theme.labelColor.color())
                .font(theme.getFont(type: .bold, size: 22.0))
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(.bottom, 20)
            Text("نحن لا نشارك معلوماتك أو اهتماماتك مع أي أحد. أنت آمن معنا.")
                .foregroundColor(theme.secondaryLabelColor.color())
                .font(theme.getFont(type: .plain, size: 14.0))
                .multilineTextAlignment(.center)
                .frame(width: 230)
                .padding(.bottom, 20)
                
            Button(action: {self.onBoardingRouter.currentPage = "page2"}) {
                HStack {
                    Image("arrow-left")
                        .font(.title)
                    Text("اختر المواضيع")
                    .font(theme.getFont(type: .semibold, size: 18.0))
                }
            }
            .overlay(
                ButtonBottomView(color: theme.primaryButtonBottomColor.color(), radius: 14),
                alignment: .bottom
            )
            .buttonStyle(PrimaryButtonStyle(theme: theme))
            
            Spacer()
            Button(action: {
                print("Share tapped!")
            }) {
                Text("تخطي")
                    .font(theme.getFont(type: .semibold, size: 18.0))
                    .foregroundColor(theme.secondaryLabelColor.color())

            }
            .edgesIgnoringSafeArea([.top, .bottom])
        }
    }
}

struct OnBoardingNoticeView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingNoticeView(
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
