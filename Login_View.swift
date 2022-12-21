//
//  Login_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/12/08.
//

import SwiftUI
import GoogleSignInSwift
import GoogleSignIn

struct Login_View: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    @State var show = false
    
    var body: some View {
        VStack {
            GoogleSignInButton(action: action: authViewModel.signIn)
                .accessibilityIdentifier("GoogleSignInButton")
        }
    }
}

struct Login_View_Previews: PreviewProvider {
    static var previews: some View {
        Login_View()
    }
}



