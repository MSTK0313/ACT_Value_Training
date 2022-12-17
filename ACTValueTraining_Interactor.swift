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
    func readValues() -> [ACTValue]
    func mockReadValues() -> [ACTValue]
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
    
    
    func readInitValues() -> [ACTValue] {
        var result = [ACTValue()]
        var filteredResult = [ACTValue()]
        
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).readValues()
        for i in 0 ..< result.count {
            if result[i].selectFlag == true {
                filteredResult.append(result[i])
            }
        }
        return filteredResult
    }
    
    func mockReadInitValues() -> [ACTValue] {
        var result = [ACTValue()]
        let test = ACTValue(value: ["category": "Family", "idealAction": "I want to pass the test", "idealLevel": 1, "achivementLevel": 2])
        let test2 = ACTValue(value: ["category": "Grows", "idealAction": "How much can this section explore words?", "idealLevel": 10, "achivementLevel": 5])
        result.removeFirst()
        result.append(test)
        result.append(test2)
        
        return result
    }
    
    
    func readValue() -> ACTValue {
        var result = [ACTValue()]
        var filteredResult = ACTValue()
        
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).readValues()
        
        for i in 0 ..< result.count {
            if result[i].category == value.category {
                filteredResult = result[i]
            }
        }
        return filteredResult        
    }
    
    func mockReadValue() -> ACTValue {
        let result = ACTValue()
        
        return result
    }
    
    
    func readValues() -> [ACTValue] {
        var result = [ACTValue()]
        result = ACTValueTrainingDataMapper(realm: RealmBorderline().toSetDefault(), userId: userId, value: value).readValues()
        
        return result
    }
    
    func mockReadValues() -> [ACTValue] {
        var result = [ACTValue()]
        let family = ACTValue(value: ["category": "Family", "idealAction": "I want to pass the test", "idealLevel": 1, "achivementLevel": 2, "selectFlag": false])
        let lover = ACTValue(value: ["category": "Lover", "idealAction": "How much can this section explore words?", "idealLevel": 10, "achivementLevel": 5, "selectFlag": true])
        let nuture = ACTValue(value: ["category": "Nuture", "idealAction": "Does Nuture view on screen?", "idealLevel": 1, "achivementLevel": 2, "selectFlag": false])
        let friends = ACTValue(value: ["category": "Friends", "idealAction": "Does Friends view on screen?", "idealLevel": 1, "achivementLevel": 2, "selectFlag": false])
        let work = ACTValue(value: ["category": "Work", "idealAction": "Does Work view on screen?", "idealLevel": 8, "achivementLevel": 2, "selectFlag": true])
        let grows = ACTValue(value: ["category": "Grows", "idealAction": "Does Grows view on screen?", "idealLevel": 6, "achivementLevel": 2, "selectFlag": true])
        let hobby = ACTValue(value: ["category": "Hobby", "idealAction": "Does Hobby view on screen?", "idealLevel": 1, "achivementLevel": 2, "selectFlag": false])
        let mentality = ACTValue(value: ["category": "Mentality", "idealAction": "Does Mentality view on screen?", "idealLevel": 1, "achivementLevel": 2, "selectFlag": false])
        let community = ACTValue(value: ["category": "Community", "idealAction": "Does Community view on screen?", "idealLevel": 2, "achivementLevel": 2, "selectFlag": false])
        let health = ACTValue(value: ["category": "Health", "idealAction": "Does Health view on screen?", "idealLevel": 1, "achivementLevel": 2, "selectFlag": false])
        
        result.removeFirst()
        result.append(family)
        result.append(lover)
        result.append(nuture)
        result.append(friends)
        result.append(work)
        result.append(grows)
        result.append(hobby)
        result.append(mentality)
        result.append(community)
        result.append(health)
        
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
    func readValues() -> [ACTValue]
    func updateValue() -> ACTValueTrainingResponse
    func deleteValue() -> ACTValueTrainingResponse
    func commitOrRollbackAndReturnResult() -> ACTValueTrainingResponse
}


