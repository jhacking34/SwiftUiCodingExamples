//
//  Appstorage_Edit.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/31/21.
//

import SwiftUI

struct Appstorage_Edit: View {
    @AppStorage("username") var username: String!
    @State private var newUserName = ""
    var body: some View {
        VStack(spacing: 20){
            HeaderView("Update App Storage", subtitle: "Updating", desc: "To update AppStorage, just assign a new value to the variable")
            Text("Ender a new user name:")
            TextField("new user name", text: $newUserName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            
            Button("Update"){
                username = newUserName
            }
            Spacer()
        }
        .font(.title3)
    }
}

struct Appstorage_Edit_Previews: PreviewProvider {
    static var previews: some View {
        Appstorage_Edit()
    }
}
