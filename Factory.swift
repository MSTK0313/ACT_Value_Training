//
//  factory.swift
//  JACK
//
//  Created by Sato Masataka on 2022/09/04.
//

import Foundation
import RealmSwift

protocol Factory {
    func handleTheRequest(request: String) -> Any
}

class CRUDFactory: Factory {
    var userId: Int
    var value: ACTValue
    
    init (userId: Int, value: ACTValue) {
        self.userId = userId
        self.value = value
    }
    
    func handleTheRequest(request: String) -> Any {
        switch request {
        case "CREATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).createValueData()
            
        case "MOCKCREATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).mockCreateValueData()
        
        case "READ_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).readValueData()
            
        case "MOCKREAD_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).mockReadValueData()
            
        case "READ_INIT_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).readInitValueData()
            
        case "MOCKREAD_INIT_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).mockReadInitValueData()
            
        case "UPDATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).updateValueData()
            
        case "MOCKUPDATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).mockUpdateValueData()
            
        case "DELETE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).deleteValueData()
            
        case "MOCKDELETE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userId: userId, value: value).mockDeleteValueData()
            
        default:
            return "NO REQUEST"
        }
    }
}
