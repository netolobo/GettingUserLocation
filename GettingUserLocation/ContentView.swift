//
//  ContentView.swift
//  GettingUserLocation
//
//  Created by Neto Lobo on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let coordinate = locationManager.lastKnownLocation {
                Text("Latitude: \(coordinate.latitude)")
                
                Text("Longitude: \(coordinate.longitude)")
            } else {
                Text("Unknown Location")
            }
            
            
            Button("Get location") {
                locationManager.checkLocationAuthorization()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
