//
//  BottomView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct BottomView: View {
    @EnvironmentObject var tabViewData : TabViewData
    var body: some View {
        HStack {
            Button(action: {self.tabViewData.selection = 1}) {
                Text("Discover city")
                    .foregroundColor(Color.white)
                    .font(.body).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: 250)
            }
            .padding()
            .background(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
            .cornerRadius(50)
        }
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
