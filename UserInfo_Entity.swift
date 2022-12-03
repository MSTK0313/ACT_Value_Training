//
//  UserInfoEntity.swift
//  JACK
//
//  Created by Sato Masataka on 2022/08/27.
//

import Foundation
import RealmSwift

//class UserInfo: Object {
//    @Persisted (primaryKey: true) var userId: Int
//    @Persisted var userPass: String
//    @Persisted var userName: String
//    
//    @Persisted var values: List<Value>
//    
////    override static func primaryKey() -> String? {
////      return "userId"
////    }
//}

class UserInfo: Object {
    @Persisted (primaryKey: true) var userId: Int
    @Persisted var userPass: String
    @Persisted var userName: String
    
    @Persisted var values: List<ACTValue>
    @Persisted var tasks: List<Task>
}

//extension UserInfo {
//    static let previewUserInfo = [UserInfo(value: ["userId": 1,
//                                                   "userPass": "previewPass",
//                                                   "userName": "previewName",
//                                                   "values": [Value(value: ["category": "成長",
//                                                                            "target": Target(value: ["target" : "プレビュー用のTargetデータです",
//                                                                                                     "smallGoals": [SmallGoal(value: ["smallGoal": "プレビュー用スモールゴール1"]),
//                                                                                                                    SmallGoal(value: ["smallGoal": "プレビュー用スモールゴール2",
//                                                                                                                                      "tasks": [Task(value: ["task": "プレビュー用タスク1をする",
//                                                                                                                                                             "continuatuinCount": 1.0,
//                                                                                                                                                             "revivalCount": 0,
//                                                                                                                                                             "planningTime": "10:00",
//                                                                                                                                                             "planningPlace": "自宅"]),
//                                                                                                                                                Task(value: ["task": "プレビュー用タスク2をする",
//                                                                                                                                                             "continuatuinCount": 3.0,
//                                                                                                                                                             "revivalCount": 4,
//                                                                                                                                                             "planningTime": "9:00",
//                                                                                                                                                             "planningPlace": "外"])]
//                                                                                                                                     ])
//                                                                                                                   ]
//                                                                                                    ])
//                                                                           ])]
//                                                  ]
//                                          )]
//}
