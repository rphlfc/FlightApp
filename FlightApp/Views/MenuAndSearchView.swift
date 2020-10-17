//
//  MenuAndSearchView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 16/10/20.
//

import SwiftUI

struct MenuAndSearchView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var search = ""
    
    var body: some View {
        ZStack {
            Image("plane")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 300)
                .background(Color(#colorLiteral(red: 0.2370265722, green: 0.2096630931, blue: 0.5778520703, alpha: 1)))
                .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
                .edgesIgnoringSafeArea(.top)
                
            
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        VStack(alignment: .leading, spacing: 4) {
                            Capsule()
                                .frame(width: 22, height: 3)
                            
                            Capsule()
                                .frame(width: 22, height: 3)
                            
                            Capsule()
                                .frame(width: 14, height: 3)
                        }
                        .foregroundColor(Color(#colorLiteral(red: 0.07449907809, green: 0.07451666147, blue: 0.07449521869, alpha: 1)))
                    })
                    .padding(12)
                    .frame(width: 50, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Spacer()
                }
                .padding(.top, 8)
                
                Spacer()
                
                Text("Let's")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                
                Text("Fly with us")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 70)
                    .foregroundColor(.white)
                    .overlay(
                        HStack {
                            Image("place")
                            
                            TextField("Your destination", text: $search)
                        }
                        .padding(.horizontal, 8)
                    )
                    .padding(.horizontal, 30)
            }
            .padding(.horizontal)
        }
        .frame(height: 270)
    }
}

struct MenuAndSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MenuAndSearchView()
    }
}
