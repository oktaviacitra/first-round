//
//  CardView.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct CardView: View {
    var distances: DistancesModel
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    Text("\(distances.path) km")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
                .padding()
            }
            .background(
                ImageView(url: distances.rides.mapUrl ?? "https://picsum.photos/200")
                    .scaledToFill()
            )
            .frame(height: (UIScreen.main.bounds.width / 4 * 3))
            
            VStack {
                HStack {
                    if let id = distances.rides.id {
                        InformationView(icon: "number", value: "\(id)")
                    }
                    Spacer()
                    
                    if let date = distances.rides.date {
                        InformationView(icon: "calendar", value: date)
                    }
                }
                .padding()
            }
            .background(Color(UIColor.systemGray6))
        }
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
        .padding([.top, .horizontal])
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(url: "https://picsum.photos/200")
//    }
//}
