//
//  CategoryRow.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal){
                HStack{
                    ForEach(items, id: \.id){land in
                        CategoryItem(landmark: land)
                    }
                }
            }
            .frame(height: 200)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(10)))
    }
}
