//
//  CarChoices.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/29/21.
//

import Foundation

class CarChoices: ObservableObject {
    @Published var cars: [String] = [""]
    @Published var selectedCar = ""
    
    // using this to do a 2 second delay to simulate pulling data
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now()+2) { [self] in
            cars = ["Audi", "Honda", "Mazda", "Tesla", "Toyota"]
            selectedCar = cars[2]
        }
    }
}
