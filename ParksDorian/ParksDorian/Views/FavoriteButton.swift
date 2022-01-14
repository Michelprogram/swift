//
//  FavoriteButton.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet = !isSet
        }){
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
        FavoriteButton(isSet: .constant(false))
    }
}
