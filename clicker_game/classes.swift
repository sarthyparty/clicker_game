//
//  classes.swift
//  clicker_game
//
//  Created by 64000774 on 9/14/20.
//  Copyright © 2020 64000774. All rights reserved.
//

import Foundation
import SwiftUI

class Player {
    @State var money = 0
    @State var upgrades = 0
    @State var salary = 10
    @State var cost = 100
    func upgrade () {
        if self.money < self.cost {
            return
        }
        self.money-=self.cost
        self.upgrades+=1
        self.salary += self.upgrades*10
        self.cost += self.upgrades*20
    }
    func work () {
        self.money+=self.salary
    }
}

struct classes_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
