//
//  PromotionView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 16/10/20.
//

import SwiftUI

struct PromotionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Promotion")
                .font(.system(size: 19, weight: .bold))
            
            HStack {
                Button(action: {}, label: {
                    PromotionItemView(image: "bali", header: "Executive", title: "Bali", subtitle: "Indonesia")
                })
                
                Button(action: {}, label: {
                    PromotionItemView(image: "fuji", header: "Business", title: "Mount Fuji", subtitle: "Japan")
                })
            }
            .frame(height: 240)
        }
        .padding(.horizontal)
    }
}

struct PromotionView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionView()
    }
}

struct PromotionItemView: View {
    var image: String
    var header: String
    var title: String
    var subtitle: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .overlay(
                ZStack {
                    Image(image)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(header)
                                .font(.system(size: 21, weight: .light))
                            
                            Spacer()
                            
                            Text(title)
                                .font(.system(size: 17, weight: .light))
                            
                            Text(subtitle)
                                .font(.system(size: 17, weight: .bold))
                        }
                        .foregroundColor(.white)
                        
                        Spacer()
                    }
                    .padding()
                }
            )
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: 0.0)
    }
}
