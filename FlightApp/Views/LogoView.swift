//
//  LogoView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 15/10/20.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 0) {
                    LogoShape(offset: 0.8)
                        .foregroundColor(Color(#colorLiteral(red: 0.2370265722, green: 0.2096630931, blue: 0.5778520703, alpha: 1)))
                        .frame(width: geometry.size.width)
                    
                    LogoShape(offset: 0.7)
                        .foregroundColor(Color(#colorLiteral(red: 0.3882020414, green: 0.4131939411, blue: 0.9869487882, alpha: 1)))
                        .frame(width: geometry.size.width * 0.7)
                    
                    LogoShape(offset: 0.4)
                        .foregroundColor(Color(#colorLiteral(red: 0.4777036905, green: 0.7630910277, blue: 0.9970898032, alpha: 1)))
                        .frame(width: geometry.size.width * 0.4)
                }
            }
            .frame(width: 90, height: 90)
            .rotationEffect(.degrees(-35))
            
            Text("FLIGHT")
                .font(.system(size: 21, weight: .bold))
                .padding(.top, 30)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
