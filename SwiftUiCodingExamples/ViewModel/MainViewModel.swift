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
            return StateObjectCar()
        case "test Example" :
            return DescView(exampleName)
        default:
            return DescView("test")
        }
    }
    
}
