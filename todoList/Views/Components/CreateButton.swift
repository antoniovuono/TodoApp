//
//  CreateButton.swift
//  todoList
//
//  Created by Antonio Vuono on 01/07/25.
//

import SwiftUI

struct CreateButton: View {
    let action: () -> Void
    let iconLabel: String
    
    var body: some View {
        Button(action: action) {
            Image(systemName: iconLabel)
                .font(.title2)
                .foregroundStyle(.gray100)
                .frame(width: 24, height: 24, alignment: .center)
                .padding(16)
                .background(Color.blueDark)
                .clipShape(.rect(cornerRadius: 8))
        }
        .frame(width: 48, height: 48, alignment: .center)
    }
}

#Preview {
    CreateButton(action: { print("teste")}, iconLabel: "plus.circle" )
}
