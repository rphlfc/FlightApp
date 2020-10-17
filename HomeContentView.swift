//
//  HomeContentView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 16/10/20.
//

import SwiftUI

struct HomeContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9169195294, green: 0.9216179252, blue: 0.9301531911, alpha: 1)).ignoresSafeArea()
            
            VStack {
                MenuAndSearchView()
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    MyFlightView()
                        .padding(.top, 10)
                    
                    PromotionView()
                        .padding(.top, 20)
                    
                    Spacer(minLength: 60)
                })
                .padding(.top, 20)
            }
        }
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}
