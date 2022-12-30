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
    var userInfo: UserInfo
    var value: ACTValue
    
    init (userInfo: UserInfo, value: ACTValue) {
        self.userInfo = userInfo
        self.value = value
    }
    
    func handleTheRequest(request: String) -> Any {
        switch request {
        case "CREATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).createValueData()
            
        case "MOCKCREATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).mockCreateValueData()
        
        case "READ_INIT_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).readInitValueData()
            
        case "MOCKREAD_INIT_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).mockReadInitValueData()
            
        case "READ_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).readValueData()
            
        case "MOCKREAD_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).mockReadValueData()
            
        case "READ_ALL_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).readValuesData()
            
        case "MOCKREAD_ALL_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).mockReadValuesData()
            
        case "UPDATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).updateValueData()
            
        case "MOCKUPDATE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).mockUpdateValueData()
            
        case "DELETE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).deleteValueData()
            
        case "MOCKDELETE_ACTVALUETRAINING_DATA":
            let returnRequest = ACTValueTrainingRequest(request: request)
            return ACTValueTrainingController(request: returnRequest, userInfo: userInfo, value: value).mockDeleteValueData()
            
            
        case "CREATE_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).createUserInfoData()
            
        case "MOCKCREATE_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).mockCreateUserInfoData()
            
        case "READ_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).readUserInfoData()
            
        case "MOCKREAD_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).mockReadUserInfoData()
            
        case "UPDATE_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).updateUserInfoData()
            
        case "MOCKUPDATE_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).mockUpdateUserInfoData()
            
        case "DELETE_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).deleteUserInfoData()
            
        case "MOCKDELETE_USERINFO_MANAGEMENT_DATA":
            let returnRequest = UserInfoManagementRequest(request: request)
            return UserInfoManagementController(request: returnRequest, userInfo: userInfo, value: value).mockDeleteUserInfoData()
            
        default:
            return "NO REQUEST"
        }
    }
}
