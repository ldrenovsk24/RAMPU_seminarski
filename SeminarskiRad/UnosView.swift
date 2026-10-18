//
//  ContentView.swift
//  SeminarskiRad
//
//  Created by drenovski on 13.10.2026..
//

import SwiftUI

struct UnosView: View {
    @SceneStorage("ime") private var ime = ""
    @SceneStorage("brojac") private var brojac = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Ime:")
            TextField("Upiši ime: ", text: $ime)
                .textFieldStyle(.roundedBorder)
                .submitLabel(.next)
                .onSubmit {
                    //kod
                }
                
            Button("Dalje"){
                if(ime.isEmpty){
                    brojac += 1
                }
            }
            .buttonStyle(.borderedProminent)
            if(brojac != 0){
                Text("Broj neuspjelih pritisaka: \(brojac)")
            }
            
        }
        .padding()
        .navigationTitle("Unos")
        .navigationDestination(for: String.self){ime in
            PozdravView(ime: ime)
        }
            
    }
}



#Preview {
    UnosView()
}
