//
//  RegisterView.swift
//  FireNote
//
//  Created by Marcello Gonzatto Birkan on 14/09/24.
//

import SwiftUI

struct RegisterView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var confirmPassword: String = ""
  
  var body: some View {
    VStack {
      Text("Registro")
        .font(.title)
        .bold()
      
      Spacer()
      
      VStack (spacing: 20) {
        FieldRow(titulo: "E-mail", text: $email)
        
        FieldRow(titulo: "Password", text: $password, isEmail: false)
        
        FieldRow(titulo: "Confirm Password", text: $confirmPassword, isEmail: false)
        
        Button("Registrar") {
          
        }
        .disabled((email.isDisabled || password.isDisabled || confirmPassword.isDisabled) || (password != confirmPassword))
        .buttonStyle(BorderedProminentButtonStyle())
        .padding(.top)
      }
      
      Spacer()
    }
    .padding()
    .background(.bg)
  }
}

#Preview {
  RegisterView()
}
