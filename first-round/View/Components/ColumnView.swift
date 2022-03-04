//
//  ColumnView.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import SwiftUI

struct ColumnView: View {
    var variable: String
    var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(variable)
                .font(.caption)
                .foregroundColor(.secondary)
            
            Text(value)
                .font(.body)
        }
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView(variable: "title", value: "subtitle")
    }
}
