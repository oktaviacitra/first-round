//
//  SelectedView.swift
//  first-round
//
//  Created by Oktavia Citra on 03/03/22.
//

import SwiftUI

struct SelectedView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(isActive ? .bold : .regular)
                .foregroundColor(isActive ? .black : Color.black.opacity(0.6))
            if (isActive) {
                Color.accentColor
                    .frame(width: 35, height: 2.5)
                .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}

struct SelectedView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedView(isActive: true, text: "Nearest")
    }
}
