//
//  TextField.swift
//  todoList
//
//  Created by Antonio Vuono on 01/07/25.
//

import SwiftUI

struct TextInput: View {
    let placeholder: String
    var fieldValidationText: String
    var isEmpty: Bool
    @Binding var taskTitle: String

  
    
    var body: some View {
        VStack {
            TextField("", text: $taskTitle, prompt: Text(placeholder).foregroundStyle(.gray300))
                .textInputAutocapitalization(.never)
                .padding(16)
                .background(.gray500)
                .foregroundStyle(.gray100)
                .clipShape(.rect(cornerRadius: 8))
                .frame(maxWidth: .infinity)
            
            Text(isEmpty ? fieldValidationText : "")
                .multilineTextAlignment(.leading)
                .foregroundStyle(.gray200)
                .font(Typography.primaryRegular(size: 12))
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
        }
    }
}

#Preview {
    struct PreviewContainer: View {
        @State private var taskTitle: String = ""
        @State private var isTextFieldEmpty: Bool = false
        
        var body: some View {
            TextInput(placeholder: "Digite algo...", fieldValidationText: "O campo não pode estar vazio", isEmpty: isTextFieldEmpty, taskTitle: $taskTitle)
                .padding()
        }
    }
    
    return PreviewContainer()
}
