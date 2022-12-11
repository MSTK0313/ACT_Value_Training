//
//  ACTValueTraining_Interactor.swift
//  JACK
//
//  Created by Sato Masataka on 2022/02/17.
//

import Foundation
import RealmSwift

protocol ACTValueTrainingRequester {
    var userId: Int { get }
    var value: ACTValue { get }
    func createValue() -> ACTValueTrainingResponse
    func mockCreateValue() -> ACTValueTrainingResponse
    func readInitValues() -> [ACTValue]
    func mockReadInitValues() -> [ACTValue]
    func readValue() -> ACTValue
    func mockReadValue() -> ACTValue
    func updateValue() -> ACTValueTrainingResponse
    func mockUpdateValue() -> ACTValueTrainingResponse
    func deleteValue() -> ACTValueTrainingResponse
    func mockDeleteValue() -> ACTValueTrainingResponse
}

class ACTValueTraining: ACTValueTrainingRequester {
    var userId: Int
    var value: ACTValue
    
    init(userId: Int, value: ACTValue) {
        self.userId = userId
        self.value = value
    }
    
    func createValue() -> ACTValueTrainingResponse {
        var result = ACTValueTrainingResponse(result: "")
        
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).createValue()
        return result
    }
    
    func mockCreateValue() -> ACTValueTrainingResponse {
        var result = ACTValueTrainingResponse(result: "")
        
        result = ACTValueTrainingResponse(result: "SUCCESS")
        return result
    }
    
    
    func readValue() -> ACTValue {
        var result = ACTValue()
        
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).readValue()
        return result
        
    }
    func mockReadValue() -> ACTValue {
        let result = ACTValue()
        
        return result
    }
    
    
    func readInitValues() -> [ACTValue] {
        var result = [ACTValue()]
        
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).readInitValues()
        return result
    }
    
    func mockReadInitValues() -> [ACTValue] {
        var result = [ACTValue()]
        let test = ACTValue(value: ["category": "Family", "idealAction": "I want to pass the test", "idealLevel": 1, "achivementLevel": 2])
        let test2 = ACTValue(value: ["category": "Grows", "idealAction": "How much can this section explore words?", "idealLevel": 10, "achivementLevel": 5])
        result.removeFirst()
        result.append(test)
        result.append(test2)
//        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).readInitValues()
        return result
    }
    
    
    func updateValue() -> ACTValueTrainingResponse {
        var result = ACTValueTrainingResponse(result: "")
        
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).updateValue()
        return result
    }
    
    func mockUpdateValue() -> ACTValueTrainingResponse {
        var result = ACTValueTrainingResponse(result: "")
        
        result = ACTValueTrainingResponse(result: "SUCCESS")
        return result
    }
    
    
    func deleteValue() -> ACTValueTrainingResponse {
        var result = ACTValueTrainingResponse(result: "")
        
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).deleteValue()
        return result
    }
    
    func mockDeleteValue() -> ACTValueTrainingResponse {
        var result = ACTValueTrainingResponse(result: "")
        
        result = ACTValueTrainingResponse(result: "SUCCESS")
        return result
    }
}

struct ACTValueTrainingRequest {
    var request: String
}
extension ACTValueTrainingRequest: Equatable {
    public static func == (lhs: ACTValueTrainingRequest, rhs: ACTValueTrainingRequest) -> Bool {
        return lhs.request == rhs.request
    }
}

struct ACTValueTrainingResponse {
    var result: String
}
extension ACTValueTrainingResponse: Equatable {
   public static func == (lhs: ACTValueTrainingResponse, rhs: ACTValueTrainingResponse) -> Bool {
       return lhs.result == rhs.result
   }
}

protocol ACTValueTrainingGateway {
    var userId: Int { get }
    var value: ACTValue { get }
    func createValue() -> ACTValueTrainingResponse
    func readValue() -> ACTValue
    func readInitValues() -> [ACTValue]
    func updateValue() -> ACTValueTrainingResponse
    func deleteValue() -> ACTValueTrainingResponse
    func commitOrRollbackAndReturnResult() -> ACTValueTrainingResponse
}


