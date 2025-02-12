//
//  Budget.swift
//  Budget_Tracker
//
//  Created by Neşat Aslan on 12.02.2025.
//

import Foundation
import SwiftUICore

enum TrasactionType{
    case income, expense
}
struct Budget: Identifiable
{
    let id = UUID()
    var value : Int
    var name :String
    var date : String
    var type : TrasactionType
    
}

struct BudgetList{
    
    static let Income = [
        Budget(value:500, name:"Maaş",date:"12.02.2025" ,type: .income),
        Budget(value: 800, name: "Satış", date: "12.02.2025",type: .income),
        Budget(value: 900, name: "Satış", date: "13.02.2025",type: .income),
        Budget(value: 200, name: "Satış", date: "13.02.2025",type: .income),
        Budget(value: 400, name: "Satış", date: "14.02.2025",type: .income)
    ]
    
    static let Expense = [
        Budget(value: 200, name: "Kitap", date: "12.02.2025", type: .expense),
        Budget(value: 400, name: "Yemek", date: "12.02.2025", type: .expense),
        Budget(value: 300, name: "Kitap", date: "14.02.2025", type: .expense)
    ]
    
    
}

struct Profit: Identifiable {
    var id = UUID()
    var value: Int
    var date: String
}

struct ProfitList{
    
    static let ProfitData = [
        Profit(value: 700, date: "12.02.2025"),
        Profit(value: 1100, date: "13.02.2025"),
        Profit(value: 100, date: "14.02.2025"),
    ]
        
}
    
    



