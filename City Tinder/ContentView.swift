//
//  ContentView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var tabViewData : TabViewData
    func switchView() -> some View {
        switch self.tabViewData.selection {
        case 1: return AnyView(
            HomeView()
        )
        case 2: return AnyView(
            love)
        case 3: return AnyView(main)
        default: return AnyView(welcome)
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
    var welcome: some View {
        WelcomeView()
    }
    var main: some View {
        VStack {
            TopView(text: "Plan your next trip")
            DiscoverView()
            Spacer()
            BottomView()
            Spacer()
        }
    }
    
    var love: some View {
        VStack{
            TopView(text: "Your loved cities!")
            ZStack {
                LoveView()
                bottomButton
            }
        }
    }
    var body: some View {
        VStack {
            switchView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TabViewData())
    }
}

