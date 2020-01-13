//
//  DefaultTheme.swift
//  Mojaz
//
//  Created by Moski Doski on 12/31/19.
//  Copyright © 2019 Moski Doski. All rights reserved.
//

import Foundation
import MojazCore
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
public typealias UIColor = NSColor
#endif

import SwiftUI

struct DefaultTheme: Theme {
    let backgroundColor = UIColor(named: "backgroundColor") ?? .black
    var isDarkStyle: Bool { UITraitCollection.current.userInterfaceStyle == .dark }
    
    let labelColor = UIColor(named: "labelColor") ?? .red
    let secondaryLabelColor = UIColor(named: "secondaryLabelColor") ?? .init(rgb: (242, 242, 247))
    
    let primaryButtonColor = UIColor(named: "primaryButtonColor") ?? .init(rgb: (34, 228, 34))
    
    let primaryButtonBottomColor = UIColor(named: "primaryButtonBottomColor") ?? .init(rgb: (30, 215, 30))
    
    func getFont(type: MyFonts, size: CGFloat) -> Font{
        switch type {
        case .normal:
            return Font.custom("BahijTheSansArabic", size: size)
        case .plain:
            return Font.custom("BahijTheSansArabic-Plain", size: size)
        case .light:
            return Font.custom("BahijTheSansArabic-Light", size: size)
        case .semibold:
            return Font.custom("BahijTheSansArabic-SemiBold", size: size)
        case .bold:
            return Font.custom("BahijTheSansArabicBold", size: size)
        
        }
    }
}
