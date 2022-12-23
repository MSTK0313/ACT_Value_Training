//
//  ACTValueTrainingSelect_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/03/19.
//

import SwiftUI
import GoogleSignIn

struct ACTValueTrainingSelect_View: View {
    @EnvironmentObject var model: ACTValueTrainingInputModel
    @Binding var idealAction_family: String
    @Binding var idealLevel_family: Int
    @Binding var achivementLevel_family: Int
    @Binding var idealAction_lover: String
    @Binding var idealLevel_lover: Int
    @Binding var achivementLevel_lover: Int
    @Binding var idealAction_nurture: String
    @Binding var idealLevel_nurture: Int
    @Binding var achivementLevel_nurture: Int
    @Binding var idealAction_friend: String
    @Binding var idealLevel_friend: Int
    @Binding var achivementLevel_friend: Int
    @Binding var idealAction_work: String
    @Binding var idealLevel_work: Int
    @Binding var achivementLevel_work: Int
    @Binding var idealAction_grows: String
    @Binding var idealLevel_grows: Int
    @Binding var achivementLevel_grows: Int
    @Binding var idealAction_hobby: String
    @Binding var idealLevel_hobby: Int
    @Binding var achivementLevel_hobby: Int
    @Binding var idealAction_mental: String
    @Binding var idealLevel_mental: Int
    @Binding var achivementLevel_mental: Int
    @Binding var idealAction_community: String
    @Binding var idealLevel_community: Int
    @Binding var achivementLevel_community: Int
    @Binding var idealAction_health: String
    @Binding var idealLevel_health: Int
    @Binding var achivementLevel_health: Int
    
    @State var show: Bool = false
    
    let data = [1,2,3,4,5,6,7,8,9]
    let values = ["Family","Lover","Nurture","Friends","Work","Grows","Hobby","Mentality","Community","Health"]
    
    
    @State private var selectionValue: Set<String> = []
    
    private var user: GIDGoogleUser? {
      return GIDSignIn.sharedInstance.currentUser
    }
    
    var body: some View {
        VStack {
            Section {
                Text("Please select 3-5 values what you want to focus on.")
                List (selection: $selectionValue) {
                    Text(values[0] + " :\n\(idealAction_family) \nIdeal level : \(idealLevel_family)\tAchivement level : \(achivementLevel_family)").tag(values[0]).lineLimit(nil)
                    Text(values[1] + " :\n\(idealAction_lover) \nIdeal level : \(idealLevel_lover)\tAchivement level : \(achivementLevel_lover)").tag(values[1]).lineLimit(nil)
                    Text(values[2] + " :\n\(idealAction_nurture) \nIdeal level : \(idealLevel_nurture)\tAchivement level : \(achivementLevel_nurture)").tag(values[2]).lineLimit(nil)
                    Text(values[3] + " :\n\(idealAction_friend) \nIdeal level : \(idealLevel_friend)\tAchivement level : \(achivementLevel_friend)").tag(values[3]).lineLimit(nil)
                    Text(values[4] + " :\n\(idealAction_work) \nIdeal level : \(idealLevel_work)\tAchivement level : \(achivementLevel_work)").tag(values[4]).lineLimit(nil)
                    Text(values[5] + " :\n\(idealAction_grows) \nIdeal level : \(idealLevel_grows)\tAchivement level : \(achivementLevel_grows)").tag(values[5]).lineLimit(nil)
                    Text(values[6] + " :\n\(idealAction_hobby) \nIdeal level : \(idealLevel_hobby)\tAchivement level : \(achivementLevel_hobby)").tag(values[6]).lineLimit(nil)
                    Text(values[7] + " :\n\(idealAction_mental) \nIdeal level : \(idealLevel_mental)\tAchivement level : \(achivementLevel_mental)").tag(values[7]).lineLimit(nil)
                    Text(values[8] + " :\n\(idealAction_community) \nIdeal level : \(idealLevel_community)\tAchivement level : \(achivementLevel_community)").tag(values[8]).lineLimit(nil)
                    Text(values[9] + " :\n\(idealAction_health) \nIdeal level : \(idealLevel_health)\tAchivement level : \(achivementLevel_health)").tag(values[9]).lineLimit(nil)
                }
                .environment(\.editMode, .constant(.active))
                
                Button(action : {
                    if(CrickResistantButton().crickResistantButton(dataSet: flagCheck(flags: selectionValue)) == "SUCCESS") {
                        self.show.toggle()
                    }
                }) {
                   Text("OK")
                }
               .buttonStyle(OK_ButtonStyle())
               .fullScreenCover(isPresented: self.$show) {
                   ACTValueTrainingManagement_View().environmentObject(ACTValueTrainingManagementModel())
               }
            }
        }
    }

    func flagCheck(flags: Set<String>) -> [ACTValueTrainingSelectModel] {
        var dataSet = [ACTValueTrainingSelectModel(request: ACTValueTrainingRequest(request: ""), user: UserInfo(), value: ACTValue())]
        var request = ACTValueTrainingRequest(request: "")
        let uer = UserInfo()
//        uer.userId = user?.profile?.email

        if (model.values.count == 0) {
            request.request = "CREATE_ACTVALUETRAINING_DATA"
        }
        else if (model.values.count > 0) {
            request.request = "UPDATE_ACTVALUETRAINING_DATA"
        }
        
        let value_family = ACTValue()
        value_family.category = "Family"
        value_family.idealAction = idealAction_family
        value_family.achivementLevel = achivementLevel_family
        value_family.idealLevel = idealLevel_family
        for flag in flags {
            if flag.elementsEqual(value_family.category) {
                value_family.selectFlag = true
                break;
            }
            else {
                value_family.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_family))
             
        let value_lover = ACTValue()
        value_lover.category = "Lover"
        value_lover.idealAction = idealAction_lover
        value_lover.achivementLevel = achivementLevel_lover
        value_lover.idealLevel = idealLevel_lover
        for flag in flags {
            if flag.elementsEqual(value_lover.category) {
                value_lover.selectFlag = true
                break;
            }
            else {
                value_lover.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_lover))
            
            
        let value_nurture = ACTValue()
        value_nurture.category = "Nurture"
        value_nurture.idealAction = idealAction_nurture
        value_nurture.achivementLevel = achivementLevel_nurture
        value_nurture.idealLevel = idealLevel_nurture
        for flag in flags {
            if flag.elementsEqual(value_nurture.category) {
                value_nurture.selectFlag = true
                break;
            }
            else {
                value_nurture.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_nurture))
            
        let value_friends = ACTValue()
        value_friends.category = "Friends"
        value_friends.idealAction = idealAction_friend
        value_friends.achivementLevel = achivementLevel_friend
        value_friends.idealLevel = idealLevel_friend
        for flag in flags {
            if flag.elementsEqual(value_friends.category) {
                value_friends.selectFlag = true
                break;
            }
            else {
                value_friends.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_friends))
            
        let value_work = ACTValue()
        value_work.category = "Work"
        value_work.idealAction = idealAction_work
        value_work.achivementLevel = achivementLevel_work
        value_work.idealLevel = idealLevel_work
        for flag in flags {
            if flag.elementsEqual(value_work.category) {
                value_work.selectFlag = true
                break;
            }
            else {
                value_work.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_work))
            
        let value_grows = ACTValue()
        value_grows.category = "Grows"
        value_grows.idealAction = idealAction_grows
        value_grows.achivementLevel = achivementLevel_grows
        value_grows.idealLevel = idealLevel_grows
        for flag in flags {
            if flag.elementsEqual(value_grows.category) {
                value_grows.selectFlag = true
                break;
            }
            else {
                value_grows.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_grows))
            
        let value_hobby = ACTValue()
        value_hobby.category = "Hobby"
        value_hobby.idealAction = idealAction_hobby
        value_hobby.achivementLevel = achivementLevel_hobby
        value_hobby.idealLevel = idealLevel_hobby
        for flag in flags {
            if flag.elementsEqual(value_hobby.category) {
                value_hobby.selectFlag = true
                break;
            }
            else {
                value_hobby.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_hobby))
            
        let value_mentality = ACTValue()
        value_mentality.category = "Mentality"
        value_mentality.idealAction = idealAction_mental
        value_mentality.achivementLevel = achivementLevel_mental
        value_mentality.idealLevel = idealLevel_mental
        for flag in flags {
            if flag.elementsEqual(value_mentality.category) {
                value_mentality.selectFlag = true
                break;
            }
            else {
                value_mentality.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_mentality))
            
        let value_community = ACTValue()
        value_community.category = "Community"
        value_community.idealAction = idealAction_community
        value_community.achivementLevel = achivementLevel_community
        value_community.idealLevel = idealLevel_community
        for flag in flags {
            if flag.elementsEqual(value_community.category) {
                value_community.selectFlag = true
                break;
            }
            else {
                value_community.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_community))
            
        let value_health = ACTValue()
        value_health.category = "Health"
        value_health.idealAction = idealAction_health
        value_health.achivementLevel = achivementLevel_health
        value_health.idealLevel = idealLevel_health
        for flag in flags {
            if flag.elementsEqual(value_health.category) {
                value_health.selectFlag = true
                break;
            }
            else {
                value_health.selectFlag = false
            }
        }
        dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value_health))
        
        dataSet.removeFirst()
        return dataSet
    }
}

struct ACTValueTrainingSelect_View_Previews: PreviewProvider {
    static var previews: some View {
        ACTValueTrainingSelect_View(
            idealAction_family: .constant(""),
            idealLevel_family: .constant(1),
            achivementLevel_family: .constant(1),
            idealAction_lover: .constant(""),
            idealLevel_lover: .constant(1),
            achivementLevel_lover: .constant(1),
            idealAction_nurture: .constant(""),
            idealLevel_nurture: .constant(1),
            achivementLevel_nurture: .constant(1),
            idealAction_friend: .constant(""),
            idealLevel_friend: .constant(1),
            achivementLevel_friend: .constant(1),
            idealAction_work: .constant(""),
            idealLevel_work: .constant(1),
            achivementLevel_work: .constant(1),
            idealAction_grows: .constant(""),
            idealLevel_grows: .constant(1),
            achivementLevel_grows: .constant(1),
            idealAction_hobby: .constant(""),
            idealLevel_hobby: .constant(1),
            achivementLevel_hobby: .constant(1),
            idealAction_mental: .constant(""),
            idealLevel_mental: .constant(1),
            achivementLevel_mental: .constant(1),
            idealAction_community: .constant(""),
            idealLevel_community: .constant(1),
            achivementLevel_community: .constant(1),
            idealAction_health: .constant(""),
            idealLevel_health: .constant(1),
            achivementLevel_health: .constant(1)
        )
    }
}

class CrickResistantButton: ACTValueTrainingSelectView {
    func crickResistantButton(dataSet: [ACTValueTrainingSelectModel]) -> String {
        return ACTValueTrainingSelectPresenter().connectViewDataToController(dataSet: dataSet)
    }
}

