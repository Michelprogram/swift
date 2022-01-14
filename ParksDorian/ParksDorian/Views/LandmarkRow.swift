//
//  LandmarkRow.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    
    
    var body: some View {
        HStack{
            CircleImage2(img: landmark.image)
            Text(landmark.name)
            Spacer()
        }
        .padding()
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
