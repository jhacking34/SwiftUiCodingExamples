//
//  ContentView.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/26/21.
//

import SwiftUI

struct Main: View {
    
    var viewModel = MainViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HeaderView("Swift UI", subtitle: "Code Examples", desc: "This app has examples for practice righting code and soemthing to refer back to for help it shows how to pass data in Swift UI", back: .blue, textColor: .white)
                    ForEach(self.viewModel.examples, id: \.self){ example in
                        NavigationLink(
                            destination: viewModel.getExampleView(example.name)){
                            HStack(spacing: 10){
                                Text(example.name)
                                    .foregroundColor(.primary)
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "chevron.right.circle.fill")
                            }
                            .padding().background(Color.white)
                            .cornerRadius(8)
                            .shadow(radius: 1, y:1)
                            .padding(.horizontal)
                        }
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
