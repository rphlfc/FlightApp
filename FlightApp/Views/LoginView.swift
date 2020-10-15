//
//  LoginView.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 15/10/20.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            LoginContentView()
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct LoginContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9169195294, green: 0.9216179252, blue: 0.9301531911, alpha: 1)).ignoresSafeArea()
            
            VStack {
                Spacer()
                
                LogoView()
                
                Spacer()
                
                FormField(image: "envelope", placeholder: "example@email.com", isSecure: false)
                
                FormField(image: "lock", placeholder: "password", isSecure: true)
                    .padding(.top)
                
                HStack {
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Forgot Password?")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                    })
                }
                .padding(.top)
                
                NavigationLink(destination: HomeView()) {
                    Text("Login")
                        .font(.system(size: 21, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color(#colorLiteral(red: 0.2370265722, green: 0.2096630931, blue: 0.5778520703, alpha: 1)))
                        .cornerRadius(8)
                        .padding(.top)
                }
                
                HStack {
                    Text("Don't have an account?")
                        .font(.system(size: 15))
                    
                    Button(action: {}, label: {
                        Text("Sign up here")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.black)
                    })
                }
                .padding(.top)
                
                HStack(spacing: 15) {
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(height: 60)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    Image("facebook")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2505864799, green: 0.224209547, blue: 0.5444943309, alpha: 1)))
                                    
                                    Text("Sign Up")
                                        .font(.system(size: 21, weight: .bold))
                                        .foregroundColor(.black)
                                        .padding(.leading, 8)
                                }
                            )
                            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: 0.0)
                    })
                    
                    Button(action: {}, label: {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(height: 60)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    Image("google")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                    
                                    Text("Sign Up")
                                        .font(.system(size: 21, weight: .bold))
                                        .foregroundColor(.black)
                                        .padding(.leading, 8)
                                }
                            )
                            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: 0.0)
                    })
                }
                .padding(.top)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}
