//
//  MainViewModel.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/28/21.
//

import SwiftUI

final class MainViewModel {
    
    var examples = Examples.exampleList
    
    func getExampleView(_ exampleName : String) -> some View {
        
        switch exampleName {
        case "State Object Car" :
            return AnyView(StateObjectCar())
        case "State Object With Picker" :
            return AnyView(StateObject_WithPicker())
        case "test Exampl" :
            return AnyView(StateObjectCar())
        default:
            return AnyView(HelloWorld())
        }
    }
    
}
