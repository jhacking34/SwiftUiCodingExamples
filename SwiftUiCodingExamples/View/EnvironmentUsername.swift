//
//  EnvironmentUsername.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 6/1/21.
//

import SwiftUI

struct EnvironmentUsername: View {
    @EnvironmentObject var user: UserModel
    
    var body: some View {
        VStack(spacing: 20){
            HeaderView("@EnvironementObject", subtitle: "Username", desc: "This is where you set a username which is a global object that can be seen anywhere in the apps.", back: .green, textColor: .black)
            Form{
                Section(header: Text("Settings")){
                    HStack{
                        Text("Username: ")
                        TextField("username", text: $user.username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Toggle("Show as online", isOn: $user.showAsOnline)
                }
            }
            .frame(width: .infinity, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            LoggedOnUser()
            Spacer()
        }
    }
}

struct EnvironmentUsername_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentUsername()
            .environmentObject(UserModel())
    }
}
