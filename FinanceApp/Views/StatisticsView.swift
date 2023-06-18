//
//  StatisticsScreen.swift
//  FinanceApp
//
//  Created by Abdullahi Addow on 6/2/23.
//

import SwiftUI

struct StatisticsView: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal,showsIndicators: false){
                LazyHStack{
                    ForEach(filters,id: \.self){filter in
                        FilterWidget(title: filter)
                    }
                }
                
            }
            .frame(height: 50)
                .padding(.bottom,30)
            ZStack(alignment:.center){
                CircularCharWidget()
                    .frame(width: 200,height: 200)
                VStack{
                    Text("Income")
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text("$12,345.22")
                        .fontWeight(.bold)
                }
            }.padding(.bottom)
            VStack{
                Text("$2,345.22")
                    .fontWeight(.bold)
                Text("Expenses")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack(alignment:.leading){
                HStack(alignment:.firstTextBaseline){
                    Text("Templates")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Recently added")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                        .padding(.leading,10)
                }
                ScrollView(.horizontal,showsIndicators: false){
                    LazyHStack{
                        ForEach(templates,id: \.name){template in
                            TemplateWidget(template: template)
                        }
                    }
                    
                }.frame(height: 200)
            }.padding(.leading,40)
        }.frame(maxHeight: .infinity,alignment: .top)
    }
}

struct StatisticsScreen_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
