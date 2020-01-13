//
//  PrimaryButtonStyle.swift
//  Mojaz
//
//  Created by Moski Doski on 1/2/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import SwiftUI
import MojazCore

struct PrimaryButtonStyle: ButtonStyle {
    
    let theme: Theme

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 326, height: 70)
            .background(RoundedCorners(color: theme.primaryButtonColor.color(), tl: 14, tr: 14, bl: 14, br: 14))
            .foregroundColor(.black)
            .padding(.horizontal, 20)
    }
}
