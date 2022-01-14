//
//  MapView.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coords: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(center: coords, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coords)
            }
    }
    

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        var myCords = CLLocationCoordinate2D(latitude: 34.011, longitude: -116.166868)
        MapView(coords: myCords)
    }
}
