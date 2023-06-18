//
//  CircularCharWidget.swift
//  FinanceApp
//
//  Created by Abdullahi Addow on 6/2/23.
//

import SwiftUI

struct CircularCharWidget: View {
    var body: some View {
        ZStack{
            Circle()
                .trim(from: 0,to: 0.65)
                .stroke(Color.green,
                        style: StrokeStyle(lineWidth: 20,lineCap: .round)).rotationEffect(.degrees(80))
            
            Circle()
                .trim(from: 0,to: 0.25)
                .stroke(Color.orange,
                        style: StrokeStyle(lineWidth: 20,lineCap: .round)).rotationEffect(.degrees(-25))
        }
    }
}

struct CircularCharWidget_Previews: PreviewProvider {
    static var previews: some View {
        CircularCharWidget()
    }
}
