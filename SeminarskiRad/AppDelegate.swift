//
//  AppDelegate.swift
//  SeminarskiRad
//
//  Created by drenovski on 18.10.2026..
//

import UIKit

final class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool{
        Dnevnik.shared.zabiljezi("AppDelegate: didFinishLaunching")
        return true
    }
}
