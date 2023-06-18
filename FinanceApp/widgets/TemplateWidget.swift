//
//  TemplateWidget.swift
//  FinanceApp
//
//  Created by Abdullahi Addow on 6/2/23.
//

import SwiftUI

struct TemplateWidget: View {
    let template:TemplateModel
    var body: some View {
        VStack{
            VStack(alignment:.leading){
                Text("#\(template.serialNumber)")
                    .font(.subheadline)
                    .foregroundColor(.black.opacity(0.5))
                    .padding(.bottom,1)
                Text(template.name)
                    .fontWeight(.bold)
                Text("20 Sep, 2023")
                    .font(.subheadline)
                    .foregroundColor(.black.opacity(0.5))
                
            }.padding(.bottom,20)
            HStack{
                Text("Paid")
                    .font(.callout)
                    .padding(.trailing,20)
                Text(template.amount)
                    .fontWeight(.bold)
            }.padding(.vertical,10)
                .padding(.horizontal,7)
                .background(.orange)
        }.padding()
            .background(.orange.opacity(0.5))
            .cornerRadius(15)
    }
}

struct TemplateWidget_Previews: PreviewProvider {
    static var previews: some View {
        TemplateWidget(template: templates.first!)
    }
}
