//
//  SeminarskiRadApp.swift
//  SeminarskiRad
//
//  Created by drenovski on 13.10.2026..
//

import SwiftUI

@main
struct SeminarskiRadApp: App {
    @State private var dnevnik = Dnevnik.shared
    
    var body: some Scene {
        WindowGroup {
            UnosView()
                .environment(dnevnik)
        }
    }
}
