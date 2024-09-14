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
  @State private var goRegister = false
  @State private var goNotes = false
  
  var body: some View {
    NavigationStack {
      ZStack {
        Color.bg.ignoresSafeArea()
        
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
                goRegister.toggle()
              })
              .foregroundStyle(.accent)
            }
          }
          .padding(.bottom)
          
          VStack(spacing: 25) {
            FieldRow(titulo: "E-mail", text: $email)
              
            
            FieldRow(titulo: "Senha", text: $password, isEmail: false)
          }
          .padding(.bottom)
          
          Button("Entrar".uppercased()) {
            goNotes.toggle()
          }
          .buttonStyle(BorderedProminentButtonStyle())
          
          Spacer()
        }
        .padding()
      }
      .navigationDestination(isPresented: $goRegister) {
        RegisterView()
      }
      .navigationDestination(isPresented: $goNotes) {
        NotesView()
      }
    }
  }
}

#Preview {
  LoginView()
}

