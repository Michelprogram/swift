//
//  CategoryItem.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct CategoryItem: View {
    
    var landmark: Landmark
    
    var body: some View {

        NavigationLink(destination: LandmarkDetail(land: landmark)){
            VStack(alignment: .leading){
                landmark.image
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(landmark.name)
                    .foregroundColor(.primary)
                    .font(.caption)
            }
            .padding(.leading, 15)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
