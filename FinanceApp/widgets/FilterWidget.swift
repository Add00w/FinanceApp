//
//  StatisticWidget.swift
//  FinanceApp
//
//  Created by Abdullahi Addow on 6/2/23.
//

import SwiftUI

struct FilterWidget: View {
    @State private var isSelected=false
    let title:String
    var body: some View {
        Text(title)
            .foregroundColor(isSelected ?.white:.black)
            .fontWeight(.bold)
            .padding(.horizontal,30)
            .padding(.vertical,10)
            .background(isSelected ?Color.black:Color.gray)
            .cornerRadius(10)
            .onTapGesture {
                isSelected = !isSelected
            }
        
    }
}

struct StatisticWidget_Previews: PreviewProvider {
    static var previews: some View {
        FilterWidget(title: "1 Year")
    }
}
