//
//  DnevnikView.swift
//  SeminarskiRad
//
//  Created by drenovski on 18.10.2026..
//

import SwiftUI

struct DnevnikView: View{
    @Binding var put: [Ekran]
    @Environment(Dnevnik.self) private var dnevnik
    
    var body: some View{
        List(dnevnik.zapisi.reversed()){ zapis in
            VStack(alignment: .leading, spacing: 4){
                Text(zapis.poruka)
                Text(zapis.vrijeme, format: .dateTime.hour().minute().second())
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .navigationTitle("Dnevnik")
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button("Obrisi", role: .destructive){
                    dnevnik.obrisi()
                }
            }
            ToolbarItem(placement: .topBarTrailing){
                Button("Na početak"){ put.removeAll()
                }
            }
        }
        .onAppear{dnevnik.zabiljezi("DnevnikView: onAppear")}
        .onDisappear{dnevnik.zabiljezi("DnevnikView: onDisappear")
        }
    }
}
