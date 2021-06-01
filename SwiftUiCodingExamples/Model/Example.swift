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
    static let AppStorageIntro = (Example(name: "AppStorage Intro"))
    static let AppStoreStruct = (Example(name: "AppStorage Struct"))
    static let testExample = Example(name: "test Example")
    static let EnvironmentIntro = Example(name: "Environement Intro")
    static let EnvironmentUser = Example(name: "Environment Username")
    
    static let exampleList = [stateObjectCar, stateObjectWithPicker, ObservedObjectWeather, AppStorageIntro, AppStoreStruct, EnvironmentIntro, EnvironmentUser,testExample]
}
