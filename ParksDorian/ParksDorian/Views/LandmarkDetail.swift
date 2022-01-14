//
//  LandmarkDetail.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var land : Landmark
    
    var body: some View {
        VStack{
            MapView(coords: land.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage2(img: land.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(land.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack{
                    Text(land.park)
                        Spacer()
                    Text(land.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text(land.category)
                    .font(.title2)
                Text(land.description)
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(land: landmarks[1])
    }
}
