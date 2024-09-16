//
//  stringExtensions.swift
//  FireNote
//
//  Created by Marcello Gonzatto Birkan on 16/09/24.
//

import Foundation

extension String {
  var isDisabled: Bool {
    self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
  }
}
