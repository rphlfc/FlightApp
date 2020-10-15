//
//  LogoShape.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 15/10/20.
//

import SwiftUI

struct LogoShape: Shape {
    var offset: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * offset, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct LogoShape_Previews: PreviewProvider {
    static var previews: some View {
        LogoShape(offset: 0.8)
            .frame(height: 120)
    }
}
