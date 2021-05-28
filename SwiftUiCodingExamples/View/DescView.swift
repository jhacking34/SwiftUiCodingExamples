//
//  DescView.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/26/21.
//

import SwiftUI

struct DescView: View {
    var desc = "Use this to.."
    var back = Color.orange
    var textColor = Color.black
    
    init(_ desc: String, back: Color = .orange, textColor: Color = .black){
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        Text(desc)
            .frame(maxWidth: .infinity)
            .padding()
            .background(back)
            .foregroundColor(textColor)
    }
}

struct DescView_Previews: PreviewProvider {
    static var previews: some View {
        DescView("Use this for a peice of description text.")
    }
}
