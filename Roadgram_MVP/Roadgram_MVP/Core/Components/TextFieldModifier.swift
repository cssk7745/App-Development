//
//  TextFieldModifier.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI

struct TextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
