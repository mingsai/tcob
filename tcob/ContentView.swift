//
//  ContentView.swift
//  tcob
//
//  Created by Tommie Carter on 9/5/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var viewRouter:ViewRouter
    
    var body: some View {
        VStack {
            if self.viewRouter.currentPage == 0 {
                withAnimation{
                    
                    MainView()
                        .transition(.move(edge: .trailing))
                }
            }
            if self.viewRouter.currentPage == 1 {
                CustomizerView().transition(.move(edge: .trailing))
            }
            if self.viewRouter.currentPage == 2 {
                ProgressView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
