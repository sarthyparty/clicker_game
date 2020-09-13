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
            Button(action: {}) {
                HStack {
                    Spacer()
                    ZStack {
                        Image("skol")
                            .renderingMode(.original)
                        Text("Work")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                    }
                    Spacer()
                }
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
                        Text(self.textt)
                    }
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


