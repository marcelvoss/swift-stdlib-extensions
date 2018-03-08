//
//  extensions.swift
//  swift-stdlib-extensions
//
//  Created by Lukas Kollmer on 08.03.18.
//  Copyright © 2018 Lukas Kollmer. All rights reserved.
//

import Foundation

#if os(OSX)
    import AppKit
    public typealias Color = NSColor
#else
    import UIKit
    public typealias Color = UIColor
#endif

extension String {
    var isFacepalm: Bool {
        return self == "🤦‍♂️"
    }
}

extension Int {
    var is42: Bool {
        return self == 42
    }
}


extension Date {
    var isMyBirthday: Bool {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: self)
        
        return components.year == 1998 && components.month == 6 && components.day == 2
    }
}


extension Color {
    var isHappy: Bool {
        return self != .black
    }
    
    var isSad: Bool {
        return true
    }
}

extension Int {
    // Sorry, even numbers :/
    mutating func makeCool() {
        if self % 2 != 0 {
            self += 1
        }
    }
    
    mutating func makeAwesome() {
        self = 73
    }
}

extension URL {
    mutating func isRickRoll() -> Bool {
        self = URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!
        return true
    }
}
