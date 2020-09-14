//
//  ContentView.swift
//  clicker_game
//
//  Created by 64000774 on 9/10/20.
//  Copyright © 2020 64000774. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @State private var showGreeting = false
    @State var textt: String="Upgrade"
    var body: some View {
        VStack {
            Text("Money")
            Button(action: {}) {
                HStack {
                    ZStack {
                        Image("skol")
                            .renderingMode(.original)
                        Text("Work")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                    }
                }
                .frame(maxWidth: 200, maxHeight: 500)
            }
            Button(action: {
                if(self.textt=="Upgrade"){
                self.textt="Upgraded"
                } else {
                    self.textt="Upgrade"
                }
            }) {
                HStack {
                    ZStack {
                        Image("hammer_icon")
                            .renderingMode(.original)
                        Text(self.textt)
                    }
                }.frame(maxWidth: 50, maxHeight: 150)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


