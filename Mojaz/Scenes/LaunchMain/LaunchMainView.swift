//
//  LaunchMainView.swift
//  Mojaz
//
//  Created by Moski Doski on 1/3/20.
//  Copyright © 2020 Moski Doski. All rights reserved.
//

import SwiftUI
import MojazCore

struct LaunchMainView: View {
    let render: LaunchMainRender
    @ObservedObject var router: LaunchMainRouter
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                
                if self.router.currentPage == .home {
                    Text("Home")
                } else if self.router.currentPage == .profile {
                    Text("Profile")
                } else if self.router.currentPage == .search {
                    Text("Search")
                } else {
                    Text("Fav")
                }
                Spacer()
                ZStack {
                    HStack {
                        Image("tabbar-profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(25)
                        .frame(width: geometry.size.width/6, height: 75)
                            .foregroundColor(self.router.currentPage == .home ? .white : .gray)
                        .onTapGesture {
                            self.router.currentPage = .profile
                        }
                        
                        Image("tabbar-search")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(25)
                        .frame(width: geometry.size.width/6, height: 75)
                            .foregroundColor(self.router.currentPage == .home ? .white : .gray)
                        .onTapGesture {
                            self.router.currentPage = .search
                        }
                        
                        
                        Image("tabbar-favorite")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(25)
                        .frame(width: geometry.size.width/6, height: 75)
                            .foregroundColor(self.router.currentPage == .home ? .white : .gray)
                        .onTapGesture {
                            self.router.currentPage = .favorite
                        }
                        
                        
                        Image("tabbar-logo-selected")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                        .padding(25)
                        .frame(width: geometry.size.width/3, height: 75)
                            .foregroundColor(self.router.currentPage == .home ? .white : .gray)
                        .onTapGesture {
                            self.router.currentPage = .home
                        }
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/10)
                    .background(Color.black)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}


#if DEBUG
struct LaunchMainView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchMainView(
            render: LaunchMainRender(
                parent: SceneRender(
                    core: AppCore()
                )
            ),
            router: LaunchMainRouter()
        )
    }
}
#endif
