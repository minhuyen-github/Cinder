//
//  TopView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct TopView: View {
    @EnvironmentObject var tabViewData : TabViewData
    var text: String
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action:{self.tabViewData.selection = 2}) {
                    Image(systemName: "tortoise.fill")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .font(.body)
                }
            }.padding([.horizontal, .bottom])
            Text(text)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(text: "Plan your next trip").environmentObject(TabViewData())
    }
}

