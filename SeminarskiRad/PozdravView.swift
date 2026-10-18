//
//  PozdravView.swift
//  SeminarskiRad
//
//  Created by drenovski on 18.10.2026..
//

import SwiftUI

struct PozdravView: View{
    let ime: String
    @Binding var put: [Ekran]
    @State private var brojac = 0
    
    var body: some View{
        VStack(spacing: 24){
            Text("Pozdrav, \(ime)!")
                .font(.largeTitle.bold())
            
            Text("Broj pritisaka: \(brojac)")
            
            Button("Pritisni me"){
                brojac += 1
            }
            .buttonStyle(.bordered)
            
            Button("Prikaži dnenvik"){
                put.append(.dnevnik)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Pozdrav")
    }
}

#Preview{
    NavigationStack{PozdravView(ime: "Leo", put: .constant([]))}
}
