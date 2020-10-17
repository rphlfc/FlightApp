//
//  MyFlightView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 16/10/20.
//

import SwiftUI

struct MyFlightView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Flight")
                .font(.system(size: 19, weight: .bold))
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("IND")
                            .font(.system(size: 28, weight: .bold))
                        
                        Image(systemName: "arrow.right")
                            .font(.system(size: 22, weight: .semibold))
                            .padding(.horizontal, 20)
                        
                        Text("FRA")
                            .font(.system(size: 28, weight: .bold))
                    }
                    
                    Text("First Class")
                        .font(.system(size: 22, weight: .ultraLight))
                    
                    Text("Tuesday, 05 May 2020")
                        .font(.system(size: 15, weight: .ultraLight))
                        .padding(.top)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Duration")
                        .font(.system(size: 13, weight: .ultraLight))
                    
                    Text("12 Hrs")
                        .font(.system(size: 15, weight: .bold))
                    
                    Spacer()
                    
                    Text("Flight Seat")
                        .font(.system(size: 13, weight: .ultraLight))
                    
                    Text("A-012")
                        .font(.system(size: 15, weight: .bold))
                }
            }
            .padding()
            .frame(height: 140)
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}

struct MyFlightView_Previews: PreviewProvider {
    static var previews: some View {
        MyFlightView()
    }
}
