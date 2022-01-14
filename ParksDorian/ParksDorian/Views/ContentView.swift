//
//  ContentView.swift
//  ParksDorian
//
//  Created by Etudiant on 14/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
