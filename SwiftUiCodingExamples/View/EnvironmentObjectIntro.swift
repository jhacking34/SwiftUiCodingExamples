//
//  EnvironmentObjectIntro.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 6/1/21.
//

import SwiftUI

struct EnvironmentObjectIntro: View {
    var body: some View {
        TabView{
            TabViewOne()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("One")
                }
            TabViewTwo()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Two")
                }
        }
        .environmentObject(NameInfo())
        .font(.title2)
    }
}

struct EnvironmentObjectIntro_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectIntro()
    }
}
