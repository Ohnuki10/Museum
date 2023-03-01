//
//  LocationListView.swift
//  firebase3
//
//  Created by 大貫 伽奈 on 2023/01/31.
//

import SwiftUI
import MapKit


struct LocationListView: View {
    
    @FetchRequest(entity: Task.entity(), sortDescriptors: [NSSortDescriptor(key: "date", ascending: true)],animation: .spring()) var results : FetchedResults<Task>
    
    //保存
    @Binding var locations: [CLLocationCoordinate2D]

    var body: some View {
        List {
            ForEach(0 ..< locations.count, id: \.self) { index in
                VStack(alignment: .leading) {
                    Text("lat: \(locations[index].latitude.description)")
                    Text("lon: \(locations[index].longitude.description)")
                }
            }
        }
     
    }
}
