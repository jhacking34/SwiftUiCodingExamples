//
//  AppStorage_StoreStruct.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/31/21.
//

import SwiftUI

struct AppStorage_StoreStruct: View {
    @AppStorage("user") var userData = User(name: "Jerzee Hacking", age: 6).encode()!
    @State private var userName = ""
    @State private var age = 0
    
    var body: some View {
        VStack(spacing:20){
            HeaderView("AppStorage", subtitle: "Store Struct", desc: "Since you can store data you can store a whole struct", back: .blue, textColor: .white)
            Text("AppStorage")
            Text("Name: \(userName)").bold()
            Text("Age: \(age)").bold()
            Spacer()
        }
        .font(.title2)
        .onAppear{
            getAppStorageData()
        }
    }
    
    func getAppStorageData(){
        if let appUser = User.decoded(userData: userData){
            userName = appUser.name
            age = appUser.age
        }
    }
}

struct AppStorage_StoreStruct_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage_StoreStruct()
    }
}
