//
//  Login_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/12/08.
//

import SwiftUI

struct Login_View: View {
    @State var show = false
    var body: some View {
        Button(action : { self.show.toggle() }) {
           Text("Sign in with Apple")
        }
       .buttonStyle(OK_ButtonStyle())
    }
}

struct Login_View_Previews: PreviewProvider {
    static var previews: some View {
        Login_View()
    }
}
