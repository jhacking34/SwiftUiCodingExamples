//
//  TabViewOne.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 6/1/21.
//

import SwiftUI

struct TabViewOne: View {
    @EnvironmentObject var nameInfo: NameInfo
    
    var body: some View {
        VStack{
            Text("Tab 1")
                .font(.largeTitle)
            HeaderView("@Environment Object", subtitle: "Intro", desc: "User the enviornmentObject modifer to add ObervableObjects to parent views.")
            Spacer()
            TextField("Add Name", text: $nameInfo.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct TabViewOne_Previews: PreviewProvider {
    
    
    static var previews: some View {
        
        TabViewOne()
            .environmentObject(NameInfo())
    }
}
