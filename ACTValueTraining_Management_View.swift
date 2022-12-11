//
//  ACTValueTrainingManagement_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/04/21.
//

import SwiftUI

struct ACTValueTrainingManagement_View: View {
    @EnvironmentObject var model: ACTValueTrainingManagementModel
    @State var show: Bool = false
    
    var body: some View {
        VStack {
            List{
                ForEach(0 ..< model.values.count, id: \.self) { i in
                    Section(header: Text("\(model.values[i].category)")) {
                        Text("\(model.values[i].idealAction)")
                    }
                }
            }
            Button(action: { self.show.toggle() }) {
                Text("Add")
            }
            .buttonStyle(OK_ButtonStyle())
            .fullScreenCover(isPresented: self.$show) {
                ACTValueTrainingInput_View()
            }
        }
    }
}

struct ACTValueTrainingManagement_View_Previews: PreviewProvider {
    static var model = ACTValueTrainingManagementModel()
    
    static var previews: some View {
        ACTValueTrainingManagement_View().environmentObject(model)
    }
}
