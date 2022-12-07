//
//  ACTValueTrainingInput_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/03/19.
//

import SwiftUI

struct ACTValueTrainingInput_View: View {   
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
        List {
            Section {
                template(category: "Family", idealAction: $idealAction_family, idealLevel: $idealLevel_family, achivementLevel: $achivementLevel_family)
                
                template(category: "Lover", idealAction: $idealAction_lover, idealLevel: $idealLevel_lover, achivementLevel: $achivementLevel_lover)
                
                template(category: "Nuture", idealAction: $idealAction_nurture, idealLevel: $idealLevel_nurture, achivementLevel: $achivementLevel_nurture)
                
                template(category: "Friends", idealAction: $idealAction_friend, idealLevel: $idealLevel_friend, achivementLevel: $achivementLevel_friend)
                
                template(category: "Work", idealAction: $idealAction_work, idealLevel: $idealLevel_work, achivementLevel: $achivementLevel_work)
                
                template(category: "Grows", idealAction: $idealAction_grows, idealLevel: $idealLevel_grows, achivementLevel: $achivementLevel_grows)
                
                template(category: "Hobby", idealAction: $idealAction_hobby, idealLevel: $idealLevel_hobby, achivementLevel: $achivementLevel_hobby)
                
                template(category: "Mentality", idealAction: $idealAction_mental, idealLevel: $idealLevel_mental, achivementLevel: $achivementLevel_mental)
                
                template(category: "Community", idealAction: $idealAction_community, idealLevel: $idealLevel_community, achivementLevel: $achivementLevel_community)
                
                template(category: "Health", idealAction: $idealAction_health, idealLevel: $idealLevel_health, achivementLevel: $achivementLevel_health)
            }
            Button(action : { self.show.toggle() }) {
               Text("OK")
            }
           .buttonStyle(OK_ButtonStyle())
           .fullScreenCover(isPresented: self.$show) {
               ACTValueTrainingSelect_View(idealAction_family: self.$idealAction_family, idealLevel_family: self.$idealLevel_family, achivementLevel_family: self.$achivementLevel_family,idealAction_lover: self.$idealAction_lover,idealLevel_lover: self.$idealLevel_lover,achivementLevel_lover: self.$achivementLevel_lover,idealAction_nurture: self.$idealAction_nurture,idealLevel_nurture: self.$idealLevel_nurture,achivementLevel_nurture: self.$achivementLevel_nurture,idealAction_friend: self.$idealAction_friend,idealLevel_friend: self.$idealLevel_friend,achivementLevel_friend: self.$achivementLevel_friend,idealAction_work: self.$idealAction_work,idealLevel_work: self.$idealLevel_work,achivementLevel_work: self.$achivementLevel_work,idealAction_grows:self.$idealAction_grows,idealLevel_grows: self.$idealLevel_grows,achivementLevel_grows: self.$achivementLevel_grows,idealAction_hobby:self.$idealAction_hobby,idealLevel_hobby: self.$idealLevel_hobby,achivementLevel_hobby: self.$achivementLevel_hobby,idealAction_mental: self.$idealAction_mental,idealLevel_mental: self.$idealLevel_mental,achivementLevel_mental: self.$achivementLevel_mental,idealAction_community: self.$idealAction_community,idealLevel_community: self.$idealLevel_community,achivementLevel_community: self.$achivementLevel_community,idealAction_health: self.$idealAction_health,idealLevel_health: self.$idealLevel_health,achivementLevel_health: self.$achivementLevel_health)
            }
        }
    }
}

struct template: View {
    var category: String
    @Binding var idealAction: String
    @Binding var idealLevel: Int
    @Binding var achivementLevel: Int
    
    var body: some View {
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

struct ACTValueTrainingInput_View_Previews: PreviewProvider {
    static var previews: some View {
        ACTValueTrainingInput_View()
    }
}
