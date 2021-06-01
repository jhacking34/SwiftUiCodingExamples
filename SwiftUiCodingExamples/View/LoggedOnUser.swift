//
//  LoggedOnUser.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 6/1/21.
//

import SwiftUI

struct LoggedOnUser: View {
    @EnvironmentObject var user: UserModel
    
    var onLineStatus: Color {
        switch user.showAsOnline {
        case true:
            return .green
        default:
            return .red
        }
    }
    
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "circle.dashed.inset.fill")
                .foregroundColor(onLineStatus)
            Text("\(user.username)")
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct LoggedOnUser_Previews: PreviewProvider {
    static var previews: some View {
        LoggedOnUser()
            .environmentObject(UserModel())
    }
}
