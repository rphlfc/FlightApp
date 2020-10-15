//
//  FormField.swift
//  FlightApp
//
//  Created by Raphael Cerqueira on 15/10/20.
//

import SwiftUI

struct FormField: View {
    @State var text = ""
    var image: String
    var placeholder: String
    var isSecure: Bool
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.system(size: 21))
            
            if isSecure {
                SecureField(placeholder, text: $text)
                    .padding(.leading, 8)
            } else {
                TextField(placeholder, text: $text)
                    .padding(.leading, 8)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.white)
        )
    }
}

struct FormField_Previews: PreviewProvider {
    static var previews: some View {
        FormField(image: "envelope", placeholder: "Email", isSecure: false)
    }
}
