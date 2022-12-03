//
//  ACTValueTraining_Entity.swift
//  JACK4
//
//  Created by Sato Masataka on 2022/11/17.
//

import Foundation
import RealmSwift

class ACTValue: Object {
    @Persisted var category: String
    @Persisted var idealAction: String
    @Persisted var idealLevel: Int
    @Persisted var achivementLevel: Int
    @Persisted var selectFlag: Bool
    @Persisted (originProperty: "values") var value: LinkingObjects<UserInfo>
}
