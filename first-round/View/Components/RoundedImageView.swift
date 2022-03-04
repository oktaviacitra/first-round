//
//  RoundedImageView.swift
//  first-round
//
//  Created by Oktavia Citra on 04/03/22.
//

import SwiftUI

struct RoundedImageView: View {
    var url: String
    
    var body: some View {
        ImageView(url: url)
            .scaledToFit()
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
            .padding([.top, .horizontal])
    }
}

struct RoundedImageView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageView(url: "https://picsum.photos/200")
    }
}
