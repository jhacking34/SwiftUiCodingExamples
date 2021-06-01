//
//  User.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/31/21.
//

import Foundation

struct User: Codable {
    var name : String
    var age : Int
    
    func encode()-> Data? {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self){
            return encoded // This is what is stored in AppStorage
        }else {
            return nil
        }
    }
    
    static func decoded(userData: Data) -> User? {
        let decoder = JSONDecoder()
        if let user = try? decoder.decode(User.self, from: userData){
            return user // this is decoded from AppStorage and turned back into a User Data Type
        } else {
            return nil
        }
    }
    
}
