//
//  PozdravView.swift
//  SeminarskiRad
//
//  Created by drenovski on 18.10.2026..
//

import SwiftUI

struct PozdravView: View{
    let ime: String
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
        }
        .padding()
        .navigationTitle("Pozdrav")
    }
}

#Preview{
    NavigationStack{PozdravView(ime: "Leo")}
}
