//
//  MainView.swift
//  first-round
//
//  Created by Oktavia Citra on 03/03/22.
//

import SwiftUI

struct MainView: View {
    @State private var isSheetPresented = false
    @ObservedObject var userViewModel = UserViewModel()
    @ObservedObject var distancesViewModel = DistancesViewModel()
    @ObservedObject var ridesViewModel = RidesViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Edvora")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
                if let user = userViewModel.user {
                    if let url = user.url {
                        CircleImageView(url: url)
                    }
                }
            }
            .padding([.top, .horizontal])
            
            HStack {
                SegmentView()
                
                Spacer()
                
                InformationView(icon: "line.3.horizontal.decrease", value: "Filters")
            }
            .padding([.top, .horizontal])
//            if let user = userViewModel.user {
//                if let stationCode = user.stationCode {
//                    ListView(benchmark: stationCode)
//                }
//            }
            Spacer()
        }
//        .onAppear(perform: {
//            ridesViewModel.fetch()
//            distancesViewModel.fetch(rides: <#T##[RidesModel]#>, benchmark: <#T##Int#>)
//        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
