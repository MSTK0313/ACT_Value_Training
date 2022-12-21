//
//  ACTValueTrainingInput_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/03/19.
//

import SwiftUI

struct ACTValueTrainingInput_View: View {
//    @EnvironmentObject var model: ACTValueTrainingInputModel
    @State var idealAction_family = ""
    @State var idealLevel_family = 1
    @State var achivementLevel_family = 1
    @State var idealAction_lover = ""
    @State var idealLevel_lover = 1
    @State var achivementLevel_lover = 1
    @State var idealAction_nurture = ""
    @State var idealLevel_nurture = 1
    @State var achivementLevel_nurture = 1
    @State var idealAction_friend = ""
    @State var idealLevel_friend = 1
    @State var achivementLevel_friend = 1
    @State var idealAction_work = ""
    @State var idealLevel_work = 1
    @State var achivementLevel_work = 1
    @State var idealAction_grows = ""
    @State var idealLevel_grows = 1
    @State var achivementLevel_grows = 1
    @State var idealAction_hobby = ""
    @State var idealLevel_hobby = 1
    @State var achivementLevel_hobby = 1
    @State var idealAction_mental = ""
    @State var idealLevel_mental = 1
    @State var achivementLevel_mental = 1
    @State var idealAction_community = ""
    @State var idealLevel_community = 1
    @State var achivementLevel_community = 1
    @State var idealAction_health = ""
    @State var idealLevel_health = 1
    @State var achivementLevel_health = 1

    @State var show: Bool = false
       
    var body: some View {
        VStack {
            List {
                template(category: "Family", idealAction: $idealAction_family, idealLevel: $idealLevel_family, achivementLevel: $achivementLevel_family).environmentObject(ACTValueTrainingInputModel())
                template(category: "Lover", idealAction: $idealAction_lover, idealLevel: $idealLevel_lover, achivementLevel: $achivementLevel_lover).environmentObject(ACTValueTrainingInputModel())
                template(category: "Nuture", idealAction: $idealAction_nurture, idealLevel: $idealLevel_nurture, achivementLevel: $achivementLevel_nurture).environmentObject(ACTValueTrainingInputModel())
                template(category: "Friends", idealAction: $idealAction_friend, idealLevel: $idealLevel_friend, achivementLevel: $achivementLevel_friend).environmentObject(ACTValueTrainingInputModel())
                template(category: "Work", idealAction: $idealAction_work, idealLevel: $idealLevel_work, achivementLevel: $achivementLevel_work).environmentObject(ACTValueTrainingInputModel())
                template(category: "Grows", idealAction: $idealAction_grows, idealLevel: $idealLevel_grows, achivementLevel: $achivementLevel_grows).environmentObject(ACTValueTrainingInputModel())
                template(category: "Hobby", idealAction: $idealAction_hobby, idealLevel: $idealLevel_hobby, achivementLevel: $achivementLevel_hobby).environmentObject(ACTValueTrainingInputModel())
                template(category: "Mentality", idealAction: $idealAction_mental, idealLevel: $idealLevel_mental, achivementLevel: $achivementLevel_mental).environmentObject(ACTValueTrainingInputModel())
                template(category: "Community", idealAction: $idealAction_community, idealLevel: $idealLevel_community, achivementLevel: $achivementLevel_community).environmentObject(ACTValueTrainingInputModel())
                template(category: "Health", idealAction: $idealAction_health, idealLevel: $idealLevel_health, achivementLevel: $achivementLevel_health).environmentObject(ACTValueTrainingInputModel())
            }
            Button(action : { self.show.toggle() }) {
               Text("OK")
            }
           .buttonStyle(OK_ButtonStyle())
           .fullScreenCover(isPresented: self.$show) {
               ACTValueTrainingSelect_View(idealAction_family: $idealAction_family, idealLevel_family: $idealLevel_family, achivementLevel_family: $achivementLevel_family,idealAction_lover: $idealAction_lover,idealLevel_lover: $idealLevel_lover,achivementLevel_lover: $achivementLevel_lover,idealAction_nurture: $idealAction_nurture,idealLevel_nurture: $idealLevel_nurture,achivementLevel_nurture: $achivementLevel_nurture,idealAction_friend: $idealAction_friend,idealLevel_friend: $idealLevel_friend,achivementLevel_friend: $achivementLevel_friend,idealAction_work: $idealAction_work,idealLevel_work: $idealLevel_work,achivementLevel_work: $achivementLevel_work,idealAction_grows:$idealAction_grows,idealLevel_grows: $idealLevel_grows,achivementLevel_grows: $achivementLevel_grows,idealAction_hobby:$idealAction_hobby,idealLevel_hobby: $idealLevel_hobby,achivementLevel_hobby: $achivementLevel_hobby,idealAction_mental: $idealAction_mental,idealLevel_mental: $idealLevel_mental,achivementLevel_mental: $achivementLevel_mental,idealAction_community: $idealAction_community,idealLevel_community: $idealLevel_community,achivementLevel_community: $achivementLevel_community,idealAction_health: $idealAction_health,idealLevel_health: $idealLevel_health,achivementLevel_health: $achivementLevel_health).environmentObject(ACTValueTrainingInputModel())
            }
        }
    }
}

struct template: View {
    @EnvironmentObject var model: ACTValueTrainingInputModel
    var category: String
    @Binding var idealAction: String
    @Binding var idealLevel: Int
    @Binding var achivementLevel: Int
    
    var body: some View {
        if (model.values.count > 0) {
            ForEach(0 ..< model.values.count, id: \.self) { i in
                if(model.values[i].category == category) {
                    Text("\(category)")
                        .listRowBackground(Color.teal)
                        .listRowSeparator(.hidden)
                        .frame(maxWidth: .infinity ,alignment: .center)
                    
                    Text("Please write ideal action about \"\(category)\"")
                        .font(.subheadline)
                    TextField("Ideal action about \(category)", text: $idealAction, axis: .vertical)
                        .listRowSeparator(.hidden)
                        .onAppear(){
                            if(self.idealAction == ""){
                                self.idealAction = model.values[i].idealAction
                            }
                        }
                    
                    Text("Please rate the ideal level and achievement level for the above contents on a 10-point scale")
                        .font(.subheadline)
                        .listRowSeparator(.hidden)
                    
                    HStack {
                        
                        Picker("Ideal level", selection: $idealLevel) {
                            ForEach(1..<11, id: \.self) {
                                Text("\($0)")
                            }
                        }
                        .onAppear(){
                            if(self.idealLevel == 1){
                                self.idealLevel = model.values[i].idealLevel
                            }
                        }
                        Picker("Achivement Level", selection: $achivementLevel) {
                            ForEach(1..<11, id: \.self) {
                                Text("\($0)")
                            }
                        }
                        .onAppear(){
                            if(self.achivementLevel == 1){
                                self.achivementLevel = model.values[i].achivementLevel
                            }
                        }
                    }
                }
            }
        }
        
        else if (model.values.count == 0) {
            Text("\(category)")
                .listRowBackground(Color.teal)
                .listRowSeparator(.hidden)
                .frame(maxWidth: .infinity ,alignment: .center)
            
            Text("Please write ideal action about \"\(category)\"")
                .font(.subheadline)
            TextField("Ideal action about \(category)", text: $idealAction, axis: .vertical)
                .listRowSeparator(.hidden)
                                
            Text("Please rate the ideal level and achievement level for the above contents on a 10-point scale")
                .font(.subheadline)
                .listRowSeparator(.hidden)
            
            HStack {
                
                Picker("Ideal level", selection: $idealLevel) {
                    ForEach(1..<11, id: \.self) {
                        Text("\($0)")
                    }
                }
                Picker("Achivement Level", selection: $achivementLevel) {
                    ForEach(1..<11, id: \.self) {
                        Text("\($0)")
                    }
                }
            }
        }
    }
}

struct ACTValueTrainingInput_View_Previews: PreviewProvider {
    static var model = ACTValueTrainingInputModel()
    static var previews: some View {
        ACTValueTrainingInput_View().environmentObject(model)
    }
}
