//
//  ContentView.swift
//  SeminarskiRad
//
//  Created by drenovski on 13.10.2026..
//

import SwiftUI

enum Ekran: Hashable{
    case pozdrav(String)
    case dnevnik
}

struct UnosView: View {
    @SceneStorage("ime") private var ime = ""
    @State private var put: [Ekran] = [] // stog zaslona
    
    @Environment(Dnevnik.self) private var dnevnik
    var body: some View {
        NavigationStack(path: $put){
            VStack {
                
                Text("Kako se zovete?")
                    .font(.title2)
                TextField("Upiši ime: ", text: $ime)
                    .textFieldStyle(.roundedBorder)
                
                
                Button("Dalje"){
                    put.append(.pozdrav(ime))
                }
                .buttonStyle(.borderedProminent)
                .disabled(ime.isEmpty)
            }
            
            .padding()
            .navigationTitle("Unos")
            .onAppear{dnevnik.zabiljezi("UnosView: onAppear")}
            .onDisappear{dnevnik.zabiljezi("UnosView: onDisappear")}
            .navigationDestination(for: Ekran.self){ ekran in
                switch ekran{
                case .pozdrav(let ime):
                    PozdravView(ime: ime, put: $put)
                case .dnevnik:
                    DnevnikView(put: $put)
                }
            }
        }
    }
}



#Preview {
    UnosView().environment(Dnevnik.shared)
}
