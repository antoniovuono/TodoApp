//
//  Typography.swift
//  todoList
//
//  Created by Antonio Vuono on 30/06/25.
//

import Foundation
import SwiftUICore


struct Typography {
    static func primaryRegular(size: CGFloat) -> Font {
        .custom("Inter18pt-Regular", size: size)
    }
    
    static func primaryBold(size: CGFloat) -> Font {
        .custom("Inter18pt-Bold", size: size)
    }
}
