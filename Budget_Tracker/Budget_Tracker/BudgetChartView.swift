//
//  BudgetChartView.swift
//  Budget_Tracker
//
//  Created by Neşat Aslan on 12.02.2025.
//

import SwiftUI
import Charts

struct BudgetChartView: View {
    var transactions: [Budget] = BudgetList.Income + BudgetList.Expense
    
    var body: some View {
            
                VStack {
                    Text("Gelir & Gider Grafiği")
                        .font(.title)
                        .bold()
                        .padding()
                        .foregroundStyle(.black)

                    Chart{
                        ForEach(transactions) { transaction in
                            BarMark(
                                x: .value("Tarih", transaction.date),
                                y: .value("Tutar", transaction.value)
                            )
                            .foregroundStyle(transaction.type == .income ? .green : .red)
                            
                        }
                    }
                    
                    .frame(height: 300)
                    .padding()
                }
                
                .foregroundColor(.white)
                .padding()
                
            }
    }


#Preview {
    BudgetChartView()
}
