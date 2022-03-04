//
//  InformationView.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import SwiftUI

struct InformationView: View {
    var icon: String
    var value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.accentColor)
            
            Text(value)
                .font(.body)
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(icon: "calendar", value: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
