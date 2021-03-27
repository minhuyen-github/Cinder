//
//  HomeView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var tabViewData: TabViewData
    @State var page = "activity"
    func switchView() -> some View {
        switch self.page {
        case "actvity": return AnyView(
            ActivityView()
        )
        case "restaurant": return AnyView(
            RestaurantView()
        )
        case "hotel": return AnyView(
            HotelView()
        )
        default: return AnyView(ActivityView())
        }
    }
    var top: some View {
            HStack {
                Text("Discover,\n Seattle")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Button(action:{}) {
                    Image(systemName: "tortoise.fill")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .font(.body)
                }
            }.padding([.horizontal, .bottom])
            
    }
    var menu : some View {
        HStack {
            Button(action: {self.page = "activity"}) {
                Text("Activity")
                    .foregroundColor(Color.white)
                    .font(.caption).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .background(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
            .cornerRadius(50)
            Button(action: {self.page = "restaurant"}) {
                Text("Restaurant")
                    .foregroundColor(Color.white)
                    .font(.caption).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .background(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
            .cornerRadius(50)
            Button(action: {self.page = "hotel"}) {
                Text("Hotel")
                    .foregroundColor(Color.white)
                    .font(.caption).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .background(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
            .cornerRadius(50)
        }
    }
    var bottomButton : some View {
        // Floating Button Panel
                VStack {
                    Spacer()
                  HStack {
                    Spacer()
                    ExpandableButtonView(
                        primaryItem: ExpandableButtonItem(label: "house.fill", view: 6),
                      secondaryItems: [
                        ExpandableButtonItem(label: "calendar", view: 3) {
                        },
                        ExpandableButtonItem(label: "heart.fill", view: 2) {
                        },
                        ExpandableButtonItem(label: "safari.fill", view: 1) {
                        }
                      ]
                    )
                    .padding()
                  }
                }
    }
    var body: some View {
        ZStack {
            VStack {
                top
                menu
                Spacer()
                ZStack {
                    switchView()
                    bottomButton
                }
            }
            //CustomTabView().environmentObject(tabViewData)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            //.environmentObject(TabViewData())
    }
}

