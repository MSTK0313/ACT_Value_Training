//
//  Realm.swift
//  JACK
//
//  Created by Sato Masataka on 2022/07/26.
//

import Foundation
import RealmSwift

class RealmBorderline {
    func toSetDefault() -> Realm {
        let config = Realm.Configuration()
        let realm = try! Realm(configuration: config)
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        return realm
    }
    
    func toSetMockforACT() -> Realm {
        let memoryRealm: Realm
        let config = Realm.Configuration(inMemoryIdentifier: "testRealmforACT")
        memoryRealm = try! Realm(configuration: config)
//        print(Realm.Configuration.defaultConfiguration)
        return memoryRealm
    }
    
    func toSetMockforUserManagement() -> Realm {
        let memoryRealm: Realm
        let config = Realm.Configuration(inMemoryIdentifier: "testRealmforUserManagement")
        memoryRealm = try! Realm(configuration: config)
//        print(Realm.Configuration.defaultConfiguration)
        return memoryRealm
    }
}

