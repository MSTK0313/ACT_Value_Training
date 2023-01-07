//
//  ACTValueTraining_Input_Presenter.swift
//  JACK
//
//  Created by Sato Masataka on 2022/12/13.
//

import Foundation
import SwiftUI
import RealmSwift

protocol ACTValueTrainingInputView {
//    func crickResistantButton(dataSet: [ACTValueTrainingSelectModel]) -> String
}

class ACTValueTrainingInputPresenter: ACTValueTrainingPresenter {
    func connectViewDataToController(dataSet: [ACTValueTrainingSelectModel]) -> String {

        var result          = ""
//        let communication   = ACTValueTrainingController(request: <#ACTValueTrainingRequest#>, userId: <#Int#>, value: <#Value#>, targe: <#Target#>).createATargetData()
        
//        if(communication == "SUCCESS") {
//            result = "SUCCESS"
//        }
        return result
    }
    
}
//TODO: inputが表示されない
class ACTValueTrainingInputModel: ObservableObject {
    @Published var values = [ACTValue()]
    init() {
        let request = ACTValueTrainingRequest(request: "READ_ALL_ACTVALUETRAINING_DATA")
        let userInfo = UserInfo()
        userInfo.userId = UserInfoManagementViewPresenter().readUserInfo().userId
        let value = ACTValue()
        values = ACTValueTrainingController(request: request, userInfo: userInfo, value: value).controllARequest() as! [ACTValue]
    }
}

