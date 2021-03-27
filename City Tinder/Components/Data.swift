//
//  Data.swift
//  City Tinder
//
//  Created by Uyen Hoang on 3/27/21.
//

import Foundation
import UIKit

struct City: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
    
    static var data: [City] {
        [
            City(name: "New York", image: "new_york"),
            City(name: "Los Angeles", image: "los_angeles"),
            City(name: "San Francisco", image: "san_francisco"),
            City(name: "Seattle", image: "seattle")
        ]
    }
}

struct Activity: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    
    static var data: [Activity] {
        [
            Activity(name: "MOHAI", image: "mohai"),
            Activity(name: "MoPoP Museum", image: "mopop"),
            Activity(name: "Living Computers: Museum and Labs", image: "comp"),
            Activity(name: "Woodland Park Zoo", image: "zoo"),
            Activity(name: "Chihuly Garden and Glass", image: "glass")
        ]
    }
}

struct Restaurant: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    
    static var data: [Restaurant] {
        [
            Restaurant(name: "Monsoon", image: "monsoon"),
            Restaurant(name: "Shiro's Sushi", image: "sushi"),
            Restaurant(name: "Taste of India", image: "india"),
            Restaurant(name: "Canlis", image: "canlis")
        ]
    }
}

struct Hotel: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    
    static var data: [Hotel] {
        [
            Hotel(name: "Seattle Marriott Waterfront", image: "marriott"),
            Hotel(name: "Hyatt Regency", image: "hyatt"),
            Hotel(name: "Warwick Seattle", image: "warwick"),
            Hotel(name: "Pan Pacific", image: "pacific")
        ]
    }
}

class TabViewData: ObservableObject {
    @Published var selection = 0
}

class Loved: Identifiable {
    //@Published var city = [City]()
    static var data: [City] {
        [
            City(name: "New York", image: "new_york"),
            City(name: "Los Angeles", image: "los_angeles")
        ]
    }
}

struct ExpandableButtonItem: Identifiable {
  let id = UUID()
  let label: String
    let view: Int
  private(set) var action: (() -> Void)? = nil
}
