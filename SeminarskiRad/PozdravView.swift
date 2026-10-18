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
    
    @Environment(Dnevnik.self) private var dnevnik
    
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
        .onAppear{dnevnik.zabiljezi("PozdravView: onAppear")}
        .onDisappear{dnevnik.zabiljezi("PozdravView: onDisappear")}
    }
}

#Preview{
    NavigationStack{PozdravView(ime: "Leo", put: .constant([]))}
        .environment(Dnevnik.shared)
}
