//
//  UserModel.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 6/1/21.
//

import Foundation

class UserModel: ObservableObject {
    @Published var username = "Guest"
    @Published var showAsOnline = false
    
    func getStatus() -> Bool {
        if self.showAsOnline == true{
            return true
        } else {
            return false
        }
    }
}
