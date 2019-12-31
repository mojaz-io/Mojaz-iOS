//
//  SpinnerView.swift
//  Mojaz
//
//  Created by Moski Doski on 12/30/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import SwiftUI

/// A circular spinner for SwiftUI
struct SpinnerView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<SpinnerView>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<SpinnerView>) {
        uiView.startAnimating()
    }
}
