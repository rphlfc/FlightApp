//
//  HomeView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 15/10/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            HomeContentView()
            
            CustomTabView()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
