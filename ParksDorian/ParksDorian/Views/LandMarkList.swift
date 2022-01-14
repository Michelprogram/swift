//
//  LandMarkList.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct LandMarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{ landmark in
            landmark.isFavorite || !showFavoriteOnly
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoriteOnly){}
                ForEach(filteredLandmarks, id:\.id){ landmark in
                    NavigationLink(destination: LandmarkDetail(land: landmark)){
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmark")
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
            .environmentObject(ModelData())
    }
}
