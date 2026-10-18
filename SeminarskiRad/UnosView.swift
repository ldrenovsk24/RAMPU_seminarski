//
//  ContentView.swift
//  SeminarskiRad
//
//  Created by drenovski on 13.10.2026..
//

import SwiftUI

struct UnosView: View {
    @State private var ime = ""
    @State private var put: [String] = [] // stog zaslona
    
    var body: some View {
        NavigationStack(path: $put){
            VStack {
                
                Text("Kako se zovete?")
                    .font(.title2)
                TextField("Upiši ime: ", text: $ime)
                    .textFieldStyle(.roundedBorder)
                
                
                Button("Dalje"){
                    put.append(ime)
                }
                .buttonStyle(.borderedProminent)
                .disabled(ime.isEmpty)
            }
            
            .padding()
            .navigationTitle("Unos")
            .navigationDestination(for: String.self){ime in
                PozdravView(ime: ime)
            }
        }
    }
}



#Preview {
    UnosView()
}
