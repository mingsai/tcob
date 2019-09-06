//
//  MainView.swift
//  tcob
//
//  Created by Tommie Carter on 9/6/19.
//  Copyright © 2019 MING Technology LLC. All rights reserved.
//

import SwiftUI

struct MainView: View {
    //@Environment(\.presentationMode) var presentation
    @EnvironmentObject var router:ViewRouter
    let splash = #imageLiteral(resourceName: "BABYBOY")
    let proImage = #imageLiteral(resourceName: "HAPPYSTAR")
    let conImage = #imageLiteral(resourceName: "BABYBEAR")
    let headerFont = Font.custom("Trattatello", size: 40.0)
    
    var body: some View {
        VStack {
            Text("Take Care of Baby")
                .font(headerFont)
            Button(action: {
                self.router.currentPage = 2
            }) {
                Image(uiImage: splash)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            HStack{
                Button(action: {
                    self.router.currentPage = 3
                }) {
                    Image(uiImage: conImage)
                        .resizable()
                        .frame(width: 60.0, height: 60.0, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                }
                Button(action: {
                    self.router.currentPage = 4
                }) {
                    Image(uiImage: proImage)
                        .resizable()
                        .frame(width: 60.0, height: 60.0, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
