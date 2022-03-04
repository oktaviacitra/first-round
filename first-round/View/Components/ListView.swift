//
//  ListView.swift
//  first-round
//
//  Created by Oktavia Citra on 04/03/22.
//

import SwiftUI

struct ListView: View {
    @State private var showingSheet = false
    var benchmark: Int
    var distances: [DistancesModel]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0 ..< distances.count){i in
                    Button(action: {
                        showingSheet.toggle()
                    }){
                        CardView(distances: distances[i])
                    }
                    .buttonStyle(.plain)
                }
            }
            .sheet(isPresented: $showingSheet) {
                PresentView()
            }
        }
    }
}


//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
