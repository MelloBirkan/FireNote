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
  @State private var alertIsPresented: Bool = false
  @State private var goLogin: Bool = false
  
  @Environment(\.dismiss) private var dismiss
  
  var body: some View {
    VStack {
      Text("Register")
        .font(.title)
        .bold()
      
      Spacer()
      
      VStack (spacing: 20) {
        FieldRow(titulo: "E-mail", text: $email)
        
        FieldRow(titulo: "Password", text: $password, isEmail: false)
        
        FieldRow(titulo: "Confirm Password", text: $confirmPassword, isEmail: false)
        
        Button("Registrar") {
          if password == confirmPassword {
            dismiss()
          } else {
            alertIsPresented.toggle()
          }
        }
        .disabled(email.isDisabled || password.isDisabled || confirmPassword.isDisabled)
        .buttonStyle(BorderedProminentButtonStyle())
        .padding(.top)
      }
      
      Spacer()
    }
    .padding()
    .background(.bg)
    .alert("Attention", isPresented: $alertIsPresented) {
      Button("Ok", role: .cancel) { }
    } message: {
      Text("Check password and confirm password and try again")
    }
    .navigationDestination(isPresented: $goLogin) {
      LoginView()
    }
  }
}

#Preview {
    RegisterView()
}
