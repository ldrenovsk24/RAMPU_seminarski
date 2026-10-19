//
//  Dnevnik.swift
//  SeminarskiRad
//
//  Created by drenovski on 18.10.2026..
//

import Foundation
import Observation

@MainActor
@Observable
final class Dnevnik{
    static let shared = Dnevnik()
    
    struct Zapis: Identifiable{
        let id = UUID()
        let vrijeme = Date()
        let poruka: String
    }
    
    private(set) var zapisi: [Zapis] = []
    
    func zabiljezi(_ poruka: String){
        zapisi.append(Zapis(poruka: poruka))
        print(poruka)
    }
    func obrisi(){
        zapisi.removeAll()
    }
}
