//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Doğukan Küçükler on 7.08.2023.
//

import Foundation
import SwiftUI

struct Circular : View {
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body : some View {
        GeometryReader { geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .fill(foregroundColor)
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/2)
        }
    }
}
