//
//  StateObject_WithPicker.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/29/21.
//

import SwiftUI

struct StateObject_WithPicker: View {
    @StateObject private var carChoices = CarChoices()
    
    var body: some View {
        VStack(spacing: 20){
            HeaderView("State Object", subtitle: "With Picker", desc: "Use of Picker and State Object showiong a 2 way binding", back: .green, textColor: .black)
            Text("Select a Car:")
            Picker(selection: $carChoices.selectedCar, label: Text("Picker")) {
                ForEach(carChoices.cars, id: \.self) { car in
                    Text(car).tag(car)
                }
            }.background(Color.green.cornerRadius(20).opacity(0.3))
            Text("You Selected a: ")
                + Text(carChoices.selectedCar).bold().foregroundColor(.green)
            Spacer()
        }
        .font(.title2)
    }
}

struct StateObject_WithPicker_Previews: PreviewProvider {
    static var previews: some View {
        StateObject_WithPicker()
    }
}
