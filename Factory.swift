//
//  factory.swift
//  JACK
//
//  Created by Sato Masataka on 2022/09/04.
//

import Foundation
import RealmSwift

protocol Factory {
    func handleTheRequest(request: String, task: Task, updateTask: Task) -> Any
}

class CRUDFactory: Factory {
    var userId: Int
    var value: ACTValue
    var target: Target
    
    init (userId: Int, value: ACTValue, target: Target) {
        self.userId = userId
        self.value = value
        self.target = target
    }
    
    func handleTheRequest(request: String, task: Task = Task(), updateTask: Task = Task()) -> Any {
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
        
            
        case "CREATE_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).createARewardSensePlanningData()
            
        case "MOCKCREATE_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).mockCreateARewardSensePlanningData()
        
        case "READ_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).readARewardSensePlanningData()
            
        case "MOCKREAD_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).mockReadARewardSensePlanningData()
            
        case "UPDATE_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).updateARewardSensePlanningData()
            
        case "MOCKUPDATE_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).mockUpdateARewardSensePlanningData()
            
        case "DELETE_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).deleteARewardSensePlanningData()
            
        case "MOCKDELETE_REWARDSENSEPLANNING_DATA":
            let returnRequest = RewardSensePlanningRequest(request: request)
            return RewardSensePlanningController(request: returnRequest, userId: userId, value: value, target: target).mockDeleteARewardSensePlanningData()
        
            
        case "READ_TASKMANAGEMENT_DATA":
            let returnRequest = TaskManagementRequest(request: request)
            return TaskManagementController(request: returnRequest, userId: userId, value: value, target: target, task: task).readInitData()
            
        case "MOCKREAD_TASKMANAGEMENT_DATA":
            let returnRequest = TaskManagementRequest(request: request)
            return TaskManagementController(request: returnRequest, userId: userId, value: value, target: target, task: task).mockReadInitData()
            
        case "UPDATE_TASKMANAGEMENT_DATA":
            let returnRequest = TaskManagementRequest(request: request)
            return TaskManagementController(request: returnRequest, userId: userId, value: value, target: target, task: task).updateInstantTaskData(update:)
            
        case "MOCKUPDATE_TASKMANAGEMENT_DATA":
            let returnRequest = TaskManagementRequest(request: request)
            return TaskManagementController(request: returnRequest, userId: userId, value: value, target: target, task: task).mockUpdateInstantTaskData(update: updateTask)
            
        case "DELETE_TASKMANAGEMENT_DATA":
            let returnRequest = TaskManagementRequest(request: request)
            return TaskManagementController(request: returnRequest, userId: userId, value: value, target: target, task: task).deleteInstantTaskData()
            
        case "MOCKDELETE_TASKMANAGEMENT_DATA":
            let returnRequest = TaskManagementRequest(request: request)
            return TaskManagementController(request: returnRequest, userId: userId, value: value, target: target, task: task).mockDeleteInstantTaskData()
            
        default:
            return "NO REQUEST"
        }
    }
}
