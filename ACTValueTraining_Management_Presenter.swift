//
//  ACTValueTrainingManagement_Presenter.swift
//  JACK
//
//  Created by Sato Masataka on 2022/04/21.
//

import Foundation
import SwiftUI
import RealmSwift

protocol ACTValueTrainingManagementView {
//    func crickResistantButton(dataSet: [ACTValueTrainingSelectModel]) -> String
}

class ACTValueTrainingManagementPresenter: ACTValueTrainingPresenter {
    func connectViewDataToController(dataSet: [ACTValueTrainingSelectModel]) -> String {

        var result          = ""
//        let communication   = ACTValueTrainingController(request: <#ACTValueTrainingRequest#>, userId: <#Int#>, value: <#Value#>, targe: <#Target#>).createATargetData()
        
//        if(communication == "SUCCESS") {
//            result = "SUCCESS"
//        }
        return result
    }
    
}

//struct ACTValueTrainingManagementModel {
//    var value               : String
//    var achivementLevel     : Int
//    var idealLevel          : Int
//    var selectedTargetFlag  : Bool
//    var request             : String
//}

class ACTValueTrainingManagementModel: ObservableObject {
    @Published var values = [ACTValue()]
    init() {
        let request = ACTValueTrainingRequest(request: "READ_INIT_ACTVALUETRAINING_DATA")
        let uer = UserInfo()
        uer.userId = 1
        let value = ACTValue()
        values = ACTValueTrainingController(request: request, userId: uer.userId, value: value).controllARequest() as! [ACTValue]
        values.removeFirst()
    }
}
