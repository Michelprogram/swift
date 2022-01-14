//
//  LandmarkDetail.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var land : Landmark
    
    var landIndex: Int{
        modelData.landmarks.firstIndex(where: {$0.id == land.id})!
    }
    
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
                FavoriteButton(isSet: $modelData.landmarks[landIndex].isFavorite)
                HStack{
                    Text(land.park)
                        Spacer()
                    Text(land.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About")
                    .font(.title2)
                Text(land.description)
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    
    static var modelData = ModelData()
    
    static var landmarks = modelData.landmarks
    
    static var previews: some View {
        LandmarkDetail(land: ModelData().landmarks[1])
            .environmentObject(modelData)
    }
}
