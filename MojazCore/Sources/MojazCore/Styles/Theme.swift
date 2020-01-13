//
//  Theme.swift
//  
//
//  Created by Moski Doski on 12/31/19.
//

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

import SwiftUI

public enum MyFonts: String{
    case normal
    case plain
    case light
    case bold
    case semibold
}

public protocol Theme {
    var backgroundColor: UIColor { get }
    var isDarkStyle: Bool { get }
    
    // Labels
    var labelColor: UIColor { get }
    var secondaryLabelColor: UIColor { get }
    
    // Buttons
    var primaryButtonColor: UIColor { get }
    var primaryButtonBottomColor: UIColor { get }
    
    func getFont(type: MyFonts, size: CGFloat) -> Font
}
