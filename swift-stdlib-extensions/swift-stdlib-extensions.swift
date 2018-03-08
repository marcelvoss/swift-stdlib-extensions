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
    var hasOneCharacter: Bool {
        return count == 1
    }
    
    var containsOnlyNumbers: Bool {
        let numbers = (0...9).map(String.init)
        return !contains { !numbers.contains(String($0)) }
    }
}

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return !isEven
    }
    
    var isPrimeNumber: Bool {
        return self > 1 && !(2..<self).contains { self % $0 == 0 }
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
}

extension URL {
    mutating func isRickRoll() -> Bool {
        self = URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")!
        return true
    }
}
