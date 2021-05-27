//
//  HeaderView.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/26/21.
//

import SwiftUI

struct HeaderView: View {
    var title = "title"
    var subtitle = "Subtitle"
    var desc = "Use this to..."
    var back = Color.orange
    var textColor = Color.black
    
    init(_ title: String, subtitle: String, desc: String, back: Color = Color.orange, textColor: Color = Color.black) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    
    var body: some View {
        VStack(spacing: 15){
            if title != ""{
                Text(title)
                    .font(.largeTitle)
            }
            
            Text(subtitle)
                .foregroundColor(.gray)
                .font(.title)
            
            DescView(desc, back: back, textColor: textColor)
        }
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView("Test Title", subtitle: "subtitle", desc: "I am describing ...")
    }
}
