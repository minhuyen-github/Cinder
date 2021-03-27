//
//  DiscoverView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct DiscoverView: View {
    @State private var translation: CGSize = .zero
    var body: some View {
        /*GeometryReader { geometry in
            VStack {
                Text("Swipe to plan")
                    .padding(.top)
                    .font(.largeTitle)
                Text("your next trip")
                    .padding()
                    .font(.largeTitle)
            }.padding(.top)
            .position(x: geometry.frame(in: .global).midX, y: geometry.frame(in: .local).minY + 89)
            VStack(alignment: .center) {
                Image("seattle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 400)
                    .clipped()
                    .cornerRadius(20)
                HStack {
                    VStack {
                        Text("Seattle")
                            .font(.title)
                            .bold()
                    }
                }.padding(.horizontal)
            }.padding(.all)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 5)
            .position(x: geometry.frame(in: .global).midX,
                      y: geometry.frame(in: .local).maxY - 300)
            .animation(.interactiveSpring())
            .offset(x: self.translation.width, y: 0)
            .rotationEffect(.degrees(Double(self.translation.width / geometry.size.width) * 25), anchor: .bottom)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.translation = value.translation
                    }.onEnded { value in
                        self.translation = .zero
                    })
        }*/
        ZStack {
            ForEach(City.data.reversed()) {
                city in PhotoView(city: city)
            }
        }.padding(8)
        .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
        .frame(width: 300, height: 500)
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}

