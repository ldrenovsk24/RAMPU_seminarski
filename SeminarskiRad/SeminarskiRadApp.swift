//
//  SeminarskiRadApp.swift
//  SeminarskiRad
//
//  Created by drenovski on 13.10.2026..
//

import SwiftUI

@main
struct SeminarskiRadApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    @Environment(\.scenePhase) private var scenePhase
    @State private var dnevnik = Dnevnik.shared
    
    var body: some Scene {
        WindowGroup {
            UnosView()
                .environment(dnevnik)
        }
        .onChange(of: scenePhase) { stara, nova in
            dnevnik.zabiljezi("Scena: \(stara) -> \(nova)")
        }
    }
}
