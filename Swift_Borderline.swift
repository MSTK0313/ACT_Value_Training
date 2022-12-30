//
//  Swift.swift
//  JACK
//
//  Created by Sato Masataka on 2022/07/27.
//

import Foundation
import UIKit
//import RealmSwift

class SwiftBorderline {
    let formatter: DateFormatter = DateFormatter()
    
    func getDateOfNow() -> Date {
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        let dateString = formatter.string(from: Date())
        lazy var Date: Date = formatter.date(from: dateString)!
        return Date
    }
    
    func getMockDateOfNow() -> Date {
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        let dateString = "2022/08/13 11:32"
        lazy var mockDate: Date = formatter.date(from: dateString)!
        
        return mockDate
    }
    
    func toSetTime(date: Date) -> String {
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        formatter.dateFormat = "HH:mm"
        let time = formatter.string(from: date)
        
        return time
    }
    
    func getDateInCalendar(value: Int, to: Date) -> Date {
        let returnDate = Calendar.current.date(byAdding: .day, value: value, to: to)
        return returnDate!
    }
    
    func compareDayWithDay(day1: Date, day2: Date) -> Bool {
        let returnBool = Calendar.current.isDate(day1, equalTo: day2, toGranularity: .day)
        return returnBool
    }
    
    func getUniqueID() -> String {
        let uniqueID = UUID().uuidString
        return uniqueID
    }
    
    func getMockUniqueID() -> String {
        let uniqueID = UIDevice.current.identifierForVendor!.uuidString
        return uniqueID
    }
}
