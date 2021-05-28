//
//  Example.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/28/21.
//

import Foundation
import SwiftUI

struct Example: Hashable {
    let name : String
}

struct Examples {
    static let stateObject = Example(name: "State Object")
    static let testExample = Example(name: "test Example")
    
    static let exampleList = [stateObject, testExample]
}
