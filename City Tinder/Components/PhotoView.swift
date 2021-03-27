//
//  PhotoView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct PhotoView: View {
    @State var city: City
    let gradient = Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.5)])
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(city.image)
                .resizable()
                .clipped()
            
            LinearGradient(gradient: self.gradient, startPoint: .top, endPoint: .bottom)
            VStack {
                Spacer()
                VStack {
                    HStack {
                        Text(city.name).font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }.frame(maxWidth: .infinity, alignment: .center)
                }
            }.padding()
            .foregroundColor(.white)
            HStack {
                            Image("heart")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:80)
                                .opacity(Double(city.x/10 - 1))
                            Spacer()
                            Image("unheart")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:80)
                                .opacity(Double(city.x/10 * -1 - 1))
                        }
        }.cornerRadius(8)
        .offset(x: city.x, y: city.y)
        .rotationEffect(.init(degrees: city.degree))
        .gesture(
            DragGesture()
                .onChanged { value in
                    withAnimation(.default) {
                        //when user is swiping card
                        city.x = value.translation.width
                        city.y = value.translation.height
                        city.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    }
                }
                .onEnded { (value) in
                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                        //when user stop swiping card
                        switch value.translation.width {
                        //swipe a bit to the right
                        case 0...100:
                            city.x = 0;
                            city.degree = 0;
                            city.y = 0
                        //swipe completely to the right
                        case let x where x > 100:
                            city.x = 500;
                            city.degree = 12
                        //swipe a bit to the left
                        case (-100)...(-1):
                            city.x = 0;
                            city.degree = 0;
                            city.y = 0
                        //swipe completely to the left
                        case let x where x < -100:
                            city.x  = -500;
                            city.degree = -12
                        default:
                            city.x = 0;
                            city.y = 0
                        }
                    }
                })
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(city: City.data[0])
            .previewLayout(.sizeThatFits)
    }
}

