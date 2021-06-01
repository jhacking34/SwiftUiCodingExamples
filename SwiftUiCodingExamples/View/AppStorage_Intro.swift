//
//  AppStorage_Intro.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/31/21.
//

import SwiftUI

struct AppStorage_Intro: View {
    //This is creating the username in appstorage
    @AppStorage("username") var username = "Uses this value if nothing if appstorage isn't created yet."
    @AppStorage("darkBackground") var darkBackground = false
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                HeaderView("App Storage", subtitle: "Intro", desc: "Use app storage to store small amount of data.")
                Text("AppStorage username")
                Text("\(username)").bold()
                
                NavigationLink("Edit", destination: Appstorage_Edit())
                Toggle(isOn: $darkBackground, label: {
                    Text("Use Dark Background")
                })
                .padding()
                Spacer()
            }
            .font(.title2)
            .preferredColorScheme(darkBackground ? .dark : .light)
        }
    }
}

struct AppStorage_Intro_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage_Intro()
    }
}
