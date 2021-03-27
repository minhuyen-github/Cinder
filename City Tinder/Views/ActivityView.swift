//
//  ActivityView.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import SwiftUI

struct ActivityView: View {
    let gradient = Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.5)])
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(Activity.data) { activity in
                    ZStack {
                        Image(activity.image)
                            .resizable()
                            .clipped()
                        LinearGradient(gradient: self.gradient, startPoint: .top, endPoint: .bottom)
                        VStack {
                            Spacer()
                            VStack {
                                HStack {
                                    Text(activity.name)
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                }
                            }.padding()
                        }
                        
                        /*ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .blur(radius: 20)
                            Text(activity.name)
                                .padding(10)
                                .foregroundColor(.white)
                        }
                        .cornerRadius(20)
                        .frame(width: 200, height: 20)*/
                    }.cornerRadius(20)
                    
                }
            }.padding()
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}

