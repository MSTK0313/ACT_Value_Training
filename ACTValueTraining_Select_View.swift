//
//  ACTValueTrainingSelect_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/03/19.
//

import SwiftUI

struct ACTValueTrainingSelect_View: View {
    
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
    var body: some View {
        VStack {
            Section {
                Text("Please select 3-5 what you want to focus on values\n")
                Text("Selected: \(selectionValue.description)")
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
                   ACTValueTrainingManagement_View()
               }
            }
        }
    }

    func flagCheck(flags: Set<String>) -> [ACTValueTrainingSelectModel] {
        var dataSet = [ACTValueTrainingSelectModel(request: ACTValueTrainingRequest(request: ""), user: UserInfo(), value: ACTValue())]
        for flag in flags {
            let request = ACTValueTrainingRequest(request: "CREATE_ACTVALUETRAINING_DATA")
            let uer = UserInfo()
            let value = ACTValue()
            switch flag {
            case "Family":
                value.category = flag
                value.idealAction = idealAction_family
                value.achivementLevel = achivementLevel_family
                value.idealLevel = idealLevel_family

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Lover":
                value.category = flag
                value.idealAction = idealAction_lover
                value.achivementLevel = achivementLevel_lover
                value.idealLevel = idealLevel_lover
                
                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Nurture":
                value.category = flag
                value.idealAction = idealAction_nurture
                value.achivementLevel = achivementLevel_nurture
                value.idealLevel = idealLevel_nurture

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Friends":
                value.category = flag
                value.idealAction = idealAction_friend
                value.achivementLevel = achivementLevel_friend
                value.idealLevel = idealLevel_friend

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Work":
                value.category = flag
                value.idealAction = idealAction_work
                value.achivementLevel = achivementLevel_work
                value.idealLevel = idealLevel_work

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Grows":
                value.category = flag
                value.idealAction = idealAction_grows
                value.achivementLevel = achivementLevel_grows
                value.idealLevel = idealLevel_grows

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Hobby":
                value.category = flag
                value.idealAction = idealAction_hobby
                value.achivementLevel = achivementLevel_hobby
                value.idealLevel = idealLevel_hobby

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Mentality":
                value.category = flag
                value.idealAction = idealAction_mental
                value.achivementLevel = achivementLevel_mental
                value.idealLevel = idealLevel_mental

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Community":
                value.category = flag
                value.idealAction = idealAction_community
                value.achivementLevel = achivementLevel_community
                value.idealLevel = idealLevel_community

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            case "Health":
                value.category = flag
                value.idealAction = idealAction_health
                value.achivementLevel = achivementLevel_health
                value.idealLevel = idealLevel_health

                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))

            default:
                print("")
            }
        }
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

