//
//  ACTValueTrainingSelect_Presenter.swift
//  JACK
//
//  Created by Sato Masataka on 2022/04/21.
//

import Foundation
import SwiftUI
import RealmSwift

struct ACTValueTrainingSelectModel {
    var request: ACTValueTrainingRequest
    var user: UserInfo
    var value: ACTValue
}

class ACTValueTrainingSelectPresenter: ACTValueTrainingPresenter {
    func connectViewDataToController(dataSet: [ACTValueTrainingSelectModel]) -> String {
        var result = ""
        for data in dataSet {
            result = ACTValueTrainingController(request: data.request, userId: 1, value: data.value).controllARequest() as! String
        }
        return result
    }
}

protocol ACTValueTrainingSelectView {
    func crickResistantButton(dataSet: [ACTValueTrainingSelectModel]) -> String
}

