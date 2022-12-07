//
//  ACTValueTrainingManagement_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/04/21.
//

import SwiftUI

struct ACTValueTrainingManagement_View: View {
    @State var show: Bool = false
    
    var body: some View {
        Button(action: { self.show.toggle() }) {
           Text("Add")
        }
        .buttonStyle(OK_ButtonStyle())
        .fullScreenCover(isPresented: self.$show) {
           ACTValueTrainingInput_View()
        }
   }
}

struct ACTValueTrainingManagement_View_Previews: PreviewProvider {
    static var previews: some View {
        ACTValueTrainingManagement_View()
    }
}
