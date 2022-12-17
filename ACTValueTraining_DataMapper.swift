//
//  ACTValueTraining_DataMapper.swift
//  JACK
//
//  Created by Sato Masataka on 2022/10/22.
//

import Foundation
import RealmSwift

class ACTValueTrainingDataMapper: ACTValueTrainingGateway{
    let realm: Realm
    var result = ACTValueTrainingResponse(result: "")
    let userId: Int
    let value: ACTValue
    
    init(realm: Realm, userId: Int, value: ACTValue) {
        self.realm = realm
        self.userId = userId
        self.value = value
    }
    
    func createValue() -> ACTValueTrainingResponse {
        let filterUserInfoByUserId = realm.object(ofType: UserInfo.self, forPrimaryKey: userId)
        let filterValuesByValue = filterUserInfoByUserId?.values.filter("category = %@", value.category).first
        
        if (filterUserInfoByUserId != nil) {
            realm.beginWrite()
            filterUserInfoByUserId?.values.append(value)
            realm.add(filterUserInfoByUserId!, update: .modified)
            
            result = commitOrRollbackAndReturnResult()
        }
        return result
    }
    
    func readValues() -> [ACTValue] {
        var values: [ACTValue] = [ACTValue()]
        let filterUserInfoByUserId = realm.object(ofType: UserInfo.self, forPrimaryKey: userId)
        
        if (filterUserInfoByUserId != nil) {
            for value in filterUserInfoByUserId!.values {
                values.append(value)
            }
            values.removeFirst()
        }
        
        return (values)
    }

    func updateValue() -> ACTValueTrainingResponse {
        let filterUserInfoByUserId = realm.object(ofType: UserInfo.self, forPrimaryKey: userId)
        let filterValuesByValue = filterUserInfoByUserId?.values.filter("category = %@", value.category).first

        realm.beginWrite()
        filterValuesByValue?.idealAction = value.idealAction
        filterValuesByValue?.idealLevel = value.idealLevel
        filterValuesByValue?.achivementLevel = value.achivementLevel
        filterValuesByValue?.selectFlag = value.selectFlag
        
        result = commitOrRollbackAndReturnResult()
        
        return result
    }
    
    func deleteValue() -> ACTValueTrainingResponse {
        let filterUserInfoByUserId = realm.object(ofType: UserInfo.self, forPrimaryKey: userId)
        let filterValuesByValue = filterUserInfoByUserId?.values.filter("category = %@", value.category).first

        realm.beginWrite()
        realm.delete(filterValuesByValue!)
        result = commitOrRollbackAndReturnResult()
        
        return result
    }
    
    func commitOrRollbackAndReturnResult() -> ACTValueTrainingResponse {
        do {
            try realm.commitWrite()
            result.result = "SUCCESS"
        }
        catch {
            realm.cancelWrite()
            print("COMMIT ERROR: \(error)")
        }
        return result
    }
}
