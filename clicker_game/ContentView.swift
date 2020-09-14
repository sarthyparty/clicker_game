//
//  ContentView.swift
//  clicker_game
//
//  Created by 64000774 on 9/10/20.
//  Copyright © 2020 64000774. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @State var money = 0
    @State var upgrades = 0
    @State var salary = 10
    @State var cost = 100
    var body: some View {
        VStack {
            Text("$\(self.money)")
            Button(action: {
                self.money = self.salary + self.money
            }) {
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
                if self.money < self.cost {
                    return
                }
                self.money-=self.cost
                self.upgrades+=1
                self.salary += self.upgrades*10
                self.cost += self.upgrades*20
            }) {
                HStack {
                    ZStack {
                        Image("hammer_icon")
                            .renderingMode(.original)
                        Text("$\(self.cost)")
                    }
                }.frame(maxWidth: .infinity, maxHeight: 150)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


