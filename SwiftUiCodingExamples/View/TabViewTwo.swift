//
//  TabViewTwo.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 6/1/21.
//

import SwiftUI

struct TabViewTwo: View {
    @EnvironmentObject var nameData: NameInfo
    
    var body: some View {
        VStack{
            LoggedOnUser()
            Text("Tab 2")
                .font(.largeTitle)
            HeaderView("@EnvironmentObject", subtitle: "Intro", desc: "This view can access the environmentObject property wrapper", back: .green, textColor: .black)
            Spacer()
            Text("The name you endtered on Tab 1 was:")
                .padding()
            Text("\(nameData.name)")
                .bold()
            Spacer()
        }
        
    }
}

struct TabViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTwo()
            .environmentObject(NameInfo())
    }
}
