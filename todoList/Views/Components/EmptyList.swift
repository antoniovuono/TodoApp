//
//  SwiftUIView.swift
//  todoList
//
//  Created by Antonio Vuono on 02/07/25.
//

import SwiftUI

struct EmptyList: View {
    var body: some View {
        VStack(spacing: 15) {
            Image("clipboard")
                .resizable()
                .frame(width: 56, height: 56)
            
            VStack (spacing: 2) {
                Text("Você ainda não tem tarefas cadastrada")
                    .font(Typography.primaryBold(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray300)
                
                Text("Crie tarefas e organize seus itens a fazer")
                    .font(Typography.primaryRegular(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray300)
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 48)
    }
}

#Preview {
    EmptyList()
}
