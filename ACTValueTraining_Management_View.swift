//
//  ACTValueTrainingManagement_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/04/21.
//

import SwiftUI

//TODO: ユーザーIDを可変にしたい

struct ACTValueTrainingManagement_View: View {
    @EnvironmentObject var model: ACTValueTrainingManagementModel
    @State var show: Bool = false
    
    var body: some View {
        VStack {
            List{
                if (model.values.count > 0) {
                    ForEach(0 ..< model.values.count, id: \.self) { i in
                        Section(header: Text("\(model.values[i].category)")) {
                            Text("\(model.values[i].idealAction)")
                        }
                    }
                }
                else if (model.values.count == 0) {
                    Text("Please add values")
                }
            }
            Button(action: { self.show.toggle() }) {
                if (model.values.count > 0) {
                    Text("Change")
                }
                else if (model.values.count == 0) {
                    Text("Add")
                }
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
