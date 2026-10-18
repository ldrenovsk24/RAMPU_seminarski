//
//  DnevnikView.swift
//  SeminarskiRad
//
//  Created by drenovski on 18.10.2026..
//

import SwiftUI

struct DnevnikView: View{
    @Binding var put: [Ekran]
    
    var body: some View{
        List{
            Text("Zapisi aktivnosti")
        }
        .navigationTitle("Dnevnik")
        .toolbar{
            Button("Na početak"){ put.removeAll()}
        }
    }
}
