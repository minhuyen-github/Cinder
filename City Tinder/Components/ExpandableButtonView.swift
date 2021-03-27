//
//  ExpandableButtonView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct ExpandableButtonView: View {
    @EnvironmentObject var tabViewData: TabViewData
    let primaryItem: ExpandableButtonItem
      let secondaryItems: [ExpandableButtonItem]

      private let noop: () -> Void = {}
      private let size: CGFloat = 70
      private var cornerRadius: CGFloat {
        get { size / 2 }
      }
      private let shadowColor = Color.black.opacity(0.4)
      private let shadowPosition: (x: CGFloat, y: CGFloat) = (x: 2, y: 2)
      private let shadowRadius: CGFloat = 3

      @State private var isExpanded = false

      var body: some View {
        VStack {
          ForEach(secondaryItems) { item in
            Button(action: {self.tabViewData.selection = item.view}) {
                    Image(systemName: item.label)
                        .foregroundColor(.white)
                }
              .frame(
                width: self.isExpanded ? self.size : 0,
                height: self.isExpanded ? self.size : 0)
          }

          Button(action: {
            withAnimation {
              self.isExpanded.toggle()
            }
            self.primaryItem.action?()
          }) {
            Image(systemName: primaryItem.label)
                .foregroundColor(.white)
          }
          .frame(width: size, height: size)
        }
        .background(Color(red: 233.0/255.0, green: 150.0/255.0, blue: 122.0/255.0, opacity: 1.0))
        .cornerRadius(cornerRadius)
        .font(.title)
        .shadow(
          color: shadowColor,
          radius: shadowRadius,
          x: shadowPosition.x,
          y: shadowPosition.y
        )
      }
}

struct ExpandableButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableButtonView(primaryItem: ExpandableButtonItem(label: "house.fill", view: 6),
                             secondaryItems: [
                               ExpandableButtonItem(label: "calendar", view: 3) {
                               },
                               ExpandableButtonItem(label: "heart.fill", view: 2) {
                               },
                               ExpandableButtonItem(label: "safari.fill", view: 1) {
                               }
                             ])
    }
}

