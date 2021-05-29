//
//  StateObject.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/29/21.
//

import SwiftUI

struct StateObjectCar: View {
    @StateObject private var car = Car(year: "2020", make: "Honda")
    
    var body: some View {
        VStack{
            HeaderView("State Object", subtitle: "Intro", desc: "Using the state object property wrapper with a class model and showing a two way binding between the model and UI.")
            
            Text("\(car.year) \(car.make)")
                .font(.largeTitle)
                .foregroundColor(.black)
            
            VStack{
                TextField("year", text: $car.year)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("make", text: $car.make)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            Spacer()
        }
        .font(.title2)
    }
}

struct StateObject_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectCar()
    }
}
