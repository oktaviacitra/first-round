//
//  RowView.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ColumnView(variable: "title", value: "subtitle")
                
                Spacer()
                
                ColumnView(variable: "title", value: "subtitle")
            }
            .padding()
                
            Divider().padding(.horizontal)
            
            HStack {
                ColumnView(variable: "title", value: "subtitle")
                
                Spacer()
                
                ColumnView(variable: "title", value: "subtitle")
            }
            .padding()
            
            Divider().padding(.horizontal)
            
            HStack {
                ColumnView(variable: "title", value: "subtitle")
                
                Spacer()
                
                ColumnView(variable: "title", value: "subtitle")
            }
            .padding()
            
            Divider().padding(.horizontal)
            
            ColumnView(variable: "title", value: "subtitle")
                .padding()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
        .padding([.top, .horizontal])
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
