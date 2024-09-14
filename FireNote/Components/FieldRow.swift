//
//  FieldRow.swift
//  FireNote
//
//  Created by Marcello Gonzatto Birkan on 14/09/24.
//

import SwiftUI

struct FieldRow: View {
  let titulo: String
  @Binding var text: String
  var isEmail: Bool = true
  
    var body: some View {
      Group {
        if isEmail {
          TextField(titulo, text: $text)
            .keyboardType(.emailAddress)
        } else {
          SecureField(titulo, text: $text)
        }
      }
        .padding()
        .background(.bg)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .overlay(
          RoundedRectangle(cornerRadius: 25)
            .stroke(lineWidth: 2)
            .foregroundStyle(.accent)
        )
    }
}

#Preview {
  FieldRow(titulo: "E-mail", text: .constant(""))
}
