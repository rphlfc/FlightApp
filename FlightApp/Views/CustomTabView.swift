//
//  CustomTabView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 14/10/20.
//

import SwiftUI

struct CustomTabView: View {
    @State private var selectedIndex: Int = 0
    
    let items = ["house", "airplane", "clock.arrow.circlepath", "person"]
    
    private let screenWidth: CGFloat = UIScreen.main.bounds.width
    private let barWidth: CGFloat = 50
    private let horizontalPadding: CGFloat = 30
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(alignment: .leading, spacing: 0) {
                Capsule()
                    .frame(width: barWidth, height: 8)
                    .foregroundColor(Color(#colorLiteral(red: 0.4727244973, green: 0.7755243182, blue: 0.9964216352, alpha: 1)))
                    .offset(x: calculateXOffset(index: selectedIndex), y: -2)
                
                HStack(spacing: 0) {
                    ForEach(0 ..< items.count) { i in
                        Image(systemName: items[i])
                            .font(.system(size: 21, weight: .bold))
                            .rotationEffect(.degrees(i == 1 ? -45 : 0))
                            .frame(width: barWidth, height: 50)
                            .onTapGesture {
                                withAnimation {
                                    selectedIndex = i
                                }
                            }
                        
                        if i != items.count - 1 {
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal, horizontalPadding)
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                .foregroundColor(.white)
            }
            .background(Color(#colorLiteral(red: 0.2370265722, green: 0.2096630931, blue: 0.5778520703, alpha: 1)))
            .clipShape(Rectangle())
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    func calculateXOffset(index: Int) -> CGFloat {
        return horizontalPadding + ((screenWidth / CGFloat(items.count)) * CGFloat(selectedIndex))
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
