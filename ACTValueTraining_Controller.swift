//
//  ACTValueTraining_Controller.swift
//  JACK
//
//  Created by Sato Masataka on 2022/02/17.
//

import Foundation
import RealmSwift

protocol ACTValueTrainingRequestControlled {
    func controllARequest() -> Any
    func createValueData() -> String
    func mockCreateValueData() -> String
    func readInitValueData() -> [ACTValue]
    func mockReadInitValueData() -> [ACTValue]
    func readValueData() -> ACTValue
    func mockReadValueData() -> ACTValue
    func readValuesData() -> [ACTValue]
    func mockReadValuesData() -> [ACTValue]
    func updateValueData() -> ACTValueTrainingResponse
    func mockUpdateValueData() -> ACTValueTrainingResponse
    func deleteValueData() -> String
    func mockDeleteValueData() -> String
}

class ACTValueTrainingController: ACTValueTrainingRequestControlled {
    var request: ACTValueTrainingRequest
    var userId: Int
    var value: ACTValue
    
    init (request: ACTValueTrainingRequest, userId: Int, value: ACTValue) {
        self.request = request
        self.userId = userId
        self.value = value
    }
    
    func controllARequest() -> Any {
        let resultOfRequest = CRUDFactory(userId: userId, value: value).handleTheRequest(request: request.request)
        return resultOfRequest
    }
    
    
    func createValueData() -> String {
        let result = ACTValueTraining(userId: userId, value: value).createValue()
        
        return result.result
    }
    func mockCreateValueData() -> String {
        let result = ACTValueTraining(userId: userId, value: value).mockCreateValue()
        
        return result.result
    }
    
    
    func readInitValueData() -> [ACTValue] {
        let result = ACTValueTraining(userId: userId, value: value).readInitValues()
        return result
    }
    
    func mockReadInitValueData() -> [ACTValue] {
        let result = ACTValueTraining(userId: userId, value: value).mockReadInitValues()
        return result
    }
    
    
    func readValueData() -> ACTValue {
        let result = ACTValueTraining(userId: userId, value: value).readValue()
        return result
    }
    func mockReadValueData() -> ACTValue {
        let result = ACTValueTraining(userId: userId, value: value).mockReadValue()
        return result
    }
    
    
    func readValuesData() -> [ACTValue] {
        let result = ACTValueTraining(userId: userId, value: value).readValues()
        return result
    }
    
    func mockReadValuesData() -> [ACTValue] {
        let result = ACTValueTraining(userId: userId, value: value).mockReadValues()
        return result
    }
    
    
    func updateValueData() -> ACTValueTrainingResponse {
        let result = ACTValueTraining(userId: userId, value: value).updateValue()
        return result
    }
    func mockUpdateValueData() -> ACTValueTrainingResponse {
        let result = ACTValueTraining(userId: userId, value: value).mockUpdateValue()
        return result
    }
    
    
    func deleteValueData() -> String {
        let result = ACTValueTraining(userId: userId, value: value).deleteValue()
        return result.result
    }
    func mockDeleteValueData() -> String {
        let result = ACTValueTraining(userId: userId, value: value).mockDeleteValue()
        return result.result
    }
}

protocol ACTValueTrainingPresenter {
    func connectViewDataToController(dataSet: [ACTValueTrainingSelectModel]) -> String
}
