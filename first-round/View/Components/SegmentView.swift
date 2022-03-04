//
//  SegmentView.swift
//  first-round
//
//  Created by Oktavia Citra on 03/03/22.
//

import SwiftUI

struct SegmentView: View {
    private let categories: [String] = ["Nearest", "Upcoming", "Past"]
    @State private var selectedIndex: Int = 0
    var body: some View {
        HStack {
            ForEach(0 ..< categories.count) { i in
                Button(action: {
                    selectedIndex = i
                }) {
                    SelectedView(isActive: selectedIndex == i, text: categories[i])
                }
                .buttonStyle(.plain)
            }
        }
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView()
    }
}
