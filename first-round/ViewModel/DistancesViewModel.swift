//
//  DistancesViewModel.swift
//  first-round
//
//  Created by Oktavia Citra on 04/03/22.
//

import Foundation

class DistancesViewModel: ObservableObject {
    @Published var distances = [DistancesModel]()
    @Published var upcoming = [DistancesModel]()
    @Published var past = [DistancesModel]()
    
    func fetch(rides: [RidesModel], benchmark: Int) {
        rides.enumerated().forEach {
            if let paths = $1.stationPath {
                distances.append(DistancesModel(id: $0, rides: $1, path: (paths[0] - benchmark)))
            }
        }
        distances = distances.sorted(by: {$0.path < $1.path})
    }
    
    func getUpcommingPast() {
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy hh:mm a"
        dateFormatter.amSymbol = "AM"
        dateFormatter.pmSymbol = "PM"
        for distance in distances {
            if let dateString: String = distance.rides.date {
                if Date() < dateFormatter.date(from: dateString) ?? Date() {
                    upcoming.append(distance)
                } else {
                    past.append(distance)
                }
            }
        }
        
    }
}
