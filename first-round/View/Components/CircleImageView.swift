//
//  CircleImageView.swift
//  first-round
//
//  Created by Oktavia Citra on 04/03/22.
//

import SwiftUI

struct CircleImageView: View {
    var url: String
    private let size: CGFloat = UIScreen.main.bounds.width * 0.1
    var body: some View {
        ImageView(url: url)
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: size, height: size)
    }
}

//struct CircleImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImageView(url: "https://picsum.photos/200")
//    }
//}
