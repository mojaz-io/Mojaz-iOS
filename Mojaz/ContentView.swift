//
//  ContentView.swift
//  Mojaz
//
//  Created by Moski Doski on 12/30/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello")
            
            .navigationBarTitle(Text("Home"))
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea([.top, .bottom])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
