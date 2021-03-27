//
//  WelcomeView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var tabViewData: TabViewData
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                        Spacer()
                Button(action:{self.tabViewData.selection = 3}) {
                            Text("Discover city")
                                .foregroundColor(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
                                .font(Font.body.bold())
                        }.frame(maxWidth: .infinity)
                        .padding(.vertical, 20)
                        .background(Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 1.0))
                        .cornerRadius(50)
                        .padding(.horizontal, 20)
                    }
                Spacer()
            }.background(Image("travel_people")
                            .resizable()
                            .edgesIgnoringSafeArea(.bottom))
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().environmentObject(TabViewData())
    }
}

