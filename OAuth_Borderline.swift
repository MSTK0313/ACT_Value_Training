//
//  OAuth_Borderline.swift
//  JACK
//
//  Created by Sato Masataka on 2022/12/20.
//

import Foundation
import SwiftUI
import GoogleSignIn


func application(
  _ application: UIApplication,
  didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
        if error != nil || user == nil {
      // Show the app's signed-out state.
        }
        else {
      // Show the app's signed-in state.
        }
    }
    return true
}




