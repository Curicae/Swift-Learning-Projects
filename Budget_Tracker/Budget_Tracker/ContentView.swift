//
//  ContentView.swift
//  Budget_Tracker
//
//  Created by Neşat Aslan on 12.02.2025.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                BudgetChartView()
            
                ProfitListView()
                
                
                BudgetListView()
                    
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
