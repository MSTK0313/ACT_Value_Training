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

class ACTValueTrainingInputModel: ObservableObject {
    @Published var values = [ACTValue()]
    init() {
        let request = ACTValueTrainingRequest(request: "READ_ALL_ACTVALUETRAINING_DATA")
        let uer = UserInfo()
        uer.userId = 1
        let value = ACTValue()
        values = ACTValueTrainingController(request: request, userId: uer.userId, value: value).controllARequest() as! [ACTValue]
    }
}

