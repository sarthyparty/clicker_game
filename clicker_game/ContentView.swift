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
    @State var isPressed:Bool=false;
    var body: some View {
        VStack {
            Spacer()
            Text("$\(self.money)").font(.system(size: 45))
            Button(action: {
                self.money = self.salary + self.money
            }) {
                ZStack {
                    Image(systemName: "dollarsign.circle")
                        
                        .renderingMode(.original)
                        .resizable()
                        .colorMultiply(.green)
                        .frame(width: 300, height: 300)
                        .blur(radius: 5.0)
                        .contrast(0.02)
                    ZStack {
                        Text("Work").font(.system(size: 86))
                            .foregroundColor(Color.green)
                            .bold()
                        Text("Work").font(.system(size: 80))
                            .foregroundColor(Color.black)
                            .bold()
                    }
                    
                }
                .frame(maxWidth: 200, maxHeight: 350)
                
            }
            Spacer()
            Button(action: {
                if self.money < self.cost {
                    return
                }
                self.money-=self.cost
                self.upgrades+=1
                self.salary += self.upgrades*10
                self.cost += self.upgrades*20
                self.isPressed.toggle()
            }) {
                HStack {
                    Text("Upgrade: $\(self.cost)")
                        .font(.system(size: 30, weight: .bold))
                    Button(action: {
                        if self.money < self.cost {
                            return
                        }
                        self.money-=self.cost
                        self.upgrades+=1
                        self.salary += self.upgrades*10
                        self.cost += self.upgrades*20
                        self.isPressed.toggle()
                    }) {
                        Image(systemName: "hammer.fill")
                    }.buttonStyle(ButtonStyle2())
                        .font(.system(size: 90))
                        .foregroundColor(.black)
                }.frame(maxWidth: .infinity, maxHeight: 150)
          }.buttonStyle(GradientButtonStyle())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .trailing, endPoint: .leading))
            .cornerRadius(15.0)
            .scaleEffect(0.9)
    }
}

struct ButtonStyle2: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.black)
            .rotationEffect(.degrees(configuration.isPressed ? 45 : 0))
    }
}



