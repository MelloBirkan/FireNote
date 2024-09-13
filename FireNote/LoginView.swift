//
//  LoginView.swift
//  FireNote
//
//  Created by Marcello Gonzatto Birkan on 12/09/24.
//

import SwiftUI

struct LoginView: View {
  @State private var email = ""
  @State private var password = ""
  
  var body: some View {
    VStack {
      Text("Login")
        .font(.title)
        .bold()
      
      Spacer()
      
      VStack {
        Text("Bem-Vindo")
        
        Circle()
          .foregroundStyle(.accent)
          .frame(width: 60)
        
        HStack {
          Text("Ainda não tem conta ?")
          
          Button("Cadastre-se ja", action: {
            
          })
          .foregroundStyle(.teal)
        }
      }
      .padding(.bottom)
      
      field(titulo: "E-mail", text: $email)
        .padding(.bottom, 10)
      
      field(titulo: "Senha", text: $password, isEmail: false)
      
      Spacer()
    }
    .padding()
  }
}

#Preview {
  LoginView()
}

func field(titulo: String, text: Binding<String>, isEmail: Bool = true) -> some View {
  Group {
    if isEmail {
      TextField(titulo, text: text)
    } else {
      SecureField(titulo, text: text)
    }
  }
    .padding()
    .background(.accent)
    .clipShape(RoundedRectangle(cornerRadius: 25))
    .overlay(
      RoundedRectangle(cornerRadius: 25)
        .stroke(lineWidth: 2)
        .foregroundStyle(.teal)
    )
}
