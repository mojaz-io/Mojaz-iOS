//
//  ButtonBottomView.swift
//  Mojaz
//
//  Created by Moski Doski on 1/3/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import SwiftUI

struct ButtonBottomView: View {
    let color: Color
    let height: CGFloat = 12
    var radius: CGFloat = 14
    
    var body: some View {
        Rectangle()
        .frame(height: height)
        .offset(y: height)
        .background(RoundedCorners(color: color, tl: 0, tr: 0, bl: radius, br: radius))
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct ButtonBottomView_Preview: PreviewProvider {
    static var previews: some View {
        ButtonBottomView(color: UIColor(red: 0.118, green: 0.843, blue: 0.118, alpha: 1.00).color(), radius: 14)
    }
}
