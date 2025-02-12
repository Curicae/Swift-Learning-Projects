//
//  BudgetListView.swift
//  Budget_Tracker
//
//  Created by Neşat Aslan on 12.02.2025.
//

import SwiftUI

struct BudgetListView: View {
    var transactions: [Budget] = BudgetList.Income + BudgetList.Expense
    
    var body: some View {
       
            VStack {
                Text("Son İşlemler")
                    .font(.title)
                    .bold()
                    .padding()
                    .foregroundStyle(.black)
                
                ForEach(transactions){ transaction in
                    HStack {
                        Text(transaction.name)
                            .bold()
                            .foregroundColor(transaction.type == .income ? .green : .red)
                            
                            .font(.title3)
                            
                        
                        Spacer()
                        
                        HStack(spacing:0){
                            Text("\(transaction.value) ")
                                .bold()
                                .font(.title3)
                                
                            Image(systemName: "turkishlirasign")
                                .bold()
                            
                            
                        }
                        
                        
                        Spacer()
                        
                        Text(transaction.date)
                        
                            .font(.title3)
                            .bold()
                    }
                    .padding()
                    
                    .cornerRadius(8)
                }
                .listStyle(PlainListStyle())
                
            }
        }
    
}

#Preview {
    BudgetListView()
}
