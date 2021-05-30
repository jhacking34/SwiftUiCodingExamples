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
    static let stateObjectCar = Example(name: "State Object Car")
    static let stateObjectWithPicker = Example(name: "State Object With Picker")
    static let ObservedObjectWeather = Example(name: "Observed Object Weather Forecast")
    static let testExample = Example(name: "test Example")
    
    static let exampleList = [stateObjectCar, stateObjectWithPicker, ObservedObjectWeather, testExample]
}
