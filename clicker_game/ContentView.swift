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

    var body: some View {
        VStack {
            Button(action: {}) {
                HStack {
                    Spacer()
                    Text("Work")
                    Spacer()
                }
            }
            Button(action: {}) {
                HStack {
                    Spacer()
                    Text("Upgrade")
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


