//
//  ProfitListView.swift
//  Budget_Tracker
//
//  Created by Neşat Aslan on 12.02.2025.
//

import SwiftUI

struct ProfitListView: View {
   
    var profitList: [Profit] = ProfitList.ProfitData
    
    var body: some View {
        VStack{
            Text("Kazançlar")
                .font(.title)
                .bold(true)
            ForEach(profitList){profitList in
                HStack{
                    Text("Kazanç: \(profitList.value)")
                        .bold()
                        .font(.title3)
                        .foregroundStyle(.green)
                    Spacer()
                    Text(profitList.date)
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
    ProfitListView()
}
