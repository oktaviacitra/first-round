//
//  ImageView.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageView: View {
    var url: String
    
    var body: some View {
        WebImage(url: URL(string: url))
            .resizable()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: "https://picsum.photos/200")
    }
}
