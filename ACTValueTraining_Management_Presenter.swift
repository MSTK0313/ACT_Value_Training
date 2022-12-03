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

struct ACTValueTrainingManagementModel {
    var target              : String
    var value               : String
    var achivementLevel     : Int
    var idealLevel          : Int
    var selectedTargetFlag  : Bool
    var request             : String
}

