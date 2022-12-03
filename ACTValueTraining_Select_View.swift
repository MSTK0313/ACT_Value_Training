//
//  ACTValueTrainingSelect_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/03/19.
//

import SwiftUI

struct ACTValueTrainingSelect_View: View {
    let family: String
    let idealLevel_family: Int
    let achivementLevel_family: Int
    let love: String
    let idealLevel_love: Int
    let achivementLevel_love: Int
    let nurture: String
    let idealLevel_nurture: Int
    let achivementLevel_nurture: Int
    let friend: String
    let idealLevel_friend: Int
    let achivementLevel_friend: Int
    let work: String
    let idealLevel_work: Int
    let achivementLevel_work: Int
    let grows: String
    let idealLevel_grows: Int
    let achivementLevel_grows: Int
    let hoby: String
    let idealLevel_hoby: Int
    let achivementLevel_hoby: Int
    let mental: String
    let idealLevel_mental: Int
    let achivementLevel_mental: Int
    let community: String
    let idealLevel_community: Int
    let achivementLevel_community: Int
    let health: String
    let idealLevel_health: Int
    let achivementLevel_health: Int
    
    @State var communication = false
    @State var selectedTargetFlag_family = false
    @State var selectedTargetFlag_love = false
    @State var selectedTargetFlag_nurture = false
    @State var selectedTargetFlag_friend = false
    @State var selectedTargetFlag_work = false
    @State var selectedTargetFlag_grows = false
    @State var selectedTargetFlag_hoby = false
    @State var selectedTargetFlag_mental = false
    @State var selectedTargetFlag_community = false
    @State var selectedTargetFlag_health = false
    let data = [1,2,3,4,5,6,7,8,9]
    
    let values = ["家族","恋人","養育","友人","仕事","成長","余暇","メンタリティ","コミュニティ","健康"]

    @State private var selectionValue: Set<String> = []
    var body: some View {
        NavigationView {
            VStack {
                Section {
                    Text("\n以下10の価値観から注力したいものを、3〜5つを目安に選んでください\n")
                    Text("選択アイテム: \(selectionValue.description)")
                }
                
                List (selection: $selectionValue) {
                    Text(values[0] + " :\n\(family) \n重要度 : \(idealLevel_family)\t達成度:\(achivementLevel_family)").tag(values[0]).lineLimit(nil)
                    Text(values[1] + " :\n\(love) \n重要度 : \(idealLevel_love)\t達成度:\(achivementLevel_love)").tag(values[1]).lineLimit(nil)
                    Text(values[2] + " :\n\(nurture) \n重要度 : \(idealLevel_nurture)\t達成度:\(achivementLevel_nurture)").tag(values[2]).lineLimit(nil)
                    Text(values[3] + " :\n\(friend) \n重要度 : \(idealLevel_friend)\t達成度:\(achivementLevel_friend)").tag(values[3]).lineLimit(nil)
                    Text(values[4] + " :\n\(work) \n重要度 : \(idealLevel_work)\t達成度:\(achivementLevel_work)").tag(values[4]).lineLimit(nil)
                    Text(values[5] + " :\n\(grows) \n重要度 : \(idealLevel_grows)\t達成度:\(achivementLevel_grows)").tag(values[5]).lineLimit(nil)
                    Text(values[6] + " :\n\(hoby) \n重要度 : \(idealLevel_hoby)\t達成度:\(achivementLevel_hoby)").tag(values[6]).lineLimit(nil)
                    Text(values[7] + " :\n\(mental) \n重要度 : \(idealLevel_mental)\t達成度:\(achivementLevel_mental)").tag(values[7]).lineLimit(nil)
                    Text(values[8] + " :\n\(community) \n重要度 : \(idealLevel_community)\t達成度:\(achivementLevel_community)").tag(values[8]).lineLimit(nil)
                    Text(values[9] + " :\n\(health) \n重要度 : \(idealLevel_health)\t達成度:\(achivementLevel_health)").tag(values[9]).lineLimit(nil)
                    
                }
                .environment(\.editMode, .constant(.active))
                    NavigationLink(
                        destination: ACTValueTrainingManagement_View(),
                        isActive: $communication,
                        label: {
                            EmptyView()
                        }
                    ).opacity(0)

                    Button(action : {
//                        if(CrickResistantButton().crickResistantButton(dataSet: flagCheck(flags: selectionValue)) == "SUCCESS") {
//                            communication = true
//                        }
                    }) {
                        Text("OK")
                        .font(.title3)
                    }
//                    .buttonStyle(OK_ButtonStyle())

            }
            .navigationTitle("ACT Value Training")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
//    func flagCheck(flags: Set<String>) -> [ACTValueTrainingSelectModel] {
//        var dataSet = [ACTValueTrainingSelectModel(request: ACTValueTrainingRequest(request: ""), user: UserInfo(), value: ACTValue())]
//        for flag in flags {
//            let request = ACTValueTrainingRequest(request: "")
//            let uer = UserInfo()
//            let value = ACTValue()
//            switch flag {
//            case "家族":
//                target.target = family
//                target.achivementLevel = achivementLevel_family
//                target.idealLevel = idealLevel_family
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "恋人":
//                target.target = love
//                target.achivementLevel = achivementLevel_love
//                target.idealLevel = idealLevel_love
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "養育":
//                target.target = nurture
//                target.achivementLevel = achivementLevel_nurture
//                target.idealLevel = idealLevel_nurture
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "友人":
//                target.target = friend
//                target.achivementLevel = achivementLevel_friend
//                target.idealLevel = idealLevel_friend
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "仕事":
//                target.target = work
//                target.achivementLevel = achivementLevel_work
//                target.idealLevel = idealLevel_work
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "成長":
//                target.target = grows
//                target.achivementLevel = achivementLevel_grows
//                target.idealLevel = idealLevel_grows
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "余暇":
//                target.target = hoby
//                target.achivementLevel = achivementLevel_hoby
//                target.idealLevel = idealLevel_hoby
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "メンタリティ":
//                target.target = mental
//                target.achivementLevel = achivementLevel_mental
//                target.idealLevel = idealLevel_mental
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "コミュニティ":
//                target.target = community
//                target.achivementLevel = achivementLevel_community
//                target.idealLevel = idealLevel_community
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            case "健康":
//                target.target = health
//                target.achivementLevel = achivementLevel_health
//                target.idealLevel = idealLevel_health
//                target.selectedTargetFlag = true
//
//                value.category = flag
////                value.target = target
//
//                dataSet.append(ACTValueTrainingSelectModel(request: request, user: uer, value: value))
//
//            default:
//                print("")
//            }
//        }
//        return dataSet
//    }
}

struct ACTValueTrainingSelect_View_Previews: PreviewProvider {
    static var previews: some View {
        ACTValueTrainingSelect_View(
            family: "",
            idealLevel_family: 1,
            achivementLevel_family: 1,
            love: "",
            idealLevel_love: 1,
            achivementLevel_love: 1,
            nurture: "",
            idealLevel_nurture: 1,
            achivementLevel_nurture: 1,
            friend: "",
            idealLevel_friend: 1,
            achivementLevel_friend: 1,
            work: "",
            idealLevel_work: 1,
            achivementLevel_work: 1,
            grows: "",
            idealLevel_grows: 1,
            achivementLevel_grows: 1,
            hoby: "",
            idealLevel_hoby: 1,
            achivementLevel_hoby: 1,
            mental: "",
            idealLevel_mental: 1,
            achivementLevel_mental: 1,
            community: "",
            idealLevel_community: 1,
            achivementLevel_community: 1,
            health: "",
            idealLevel_health: 1,
            achivementLevel_health: 1
        )
    }
}

class CrickResistantButton: ACTValueTrainingSelectView {
    func crickResistantButton(dataSet: [ACTValueTrainingSelectModel]) -> String {
        return ACTValueTrainingSelectPresenter().connectViewDataToController(dataSet: dataSet)
    }
}

