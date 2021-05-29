//
//  Car.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/29/21.
//

import Foundation

class Car: ObservableObject {
    @Published var year: String
    @Published var make: String
    
    init(year: String, make: String) {
        self.year = year
        self.make = make
    }
}
