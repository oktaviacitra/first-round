//
//  DetailView.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            ImageView(url: "https://picsum.photos/200")
                .padding([.horizontal, .top])
            
            RowView()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
