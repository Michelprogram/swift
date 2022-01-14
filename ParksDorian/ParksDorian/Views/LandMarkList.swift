//
//  LandMarkList.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks, id:\.id){ landmark in
                NavigationLink(destination: LandmarkDetail(land: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmark")
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
