//
//  ContentView.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/26/21.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HeaderView("Swift UI", subtitle: "Code Examples", desc: "This app has examples for practice righting code and soemthing to refer back to for help", back: .blue, textColor: .white)
                    NavigationLink(
                        destination: DescView("test")){
                        HStack(spacing: 10){
                            Text("State Object")
                                .foregroundColor(.primary)
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.green)
                            Spacer()
                            Image(systemName: "chevron.right.circle.fill")
                        }
                        .padding().background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 1, y:1)
                        .padding()
                    }
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
