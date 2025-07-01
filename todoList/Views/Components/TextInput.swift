//
//  TextField.swift
//  todoList
//
//  Created by Antonio Vuono on 01/07/25.
//

import SwiftUI

struct TextInput: View {
    let placeholder: String
    @Binding var taskTitle: String
    
    var body: some View {
        TextField("", text: $taskTitle, prompt: Text(placeholder).foregroundStyle(.gray300))
            .textInputAutocapitalization(.never)
            .padding(16)
            .background(.gray500)
            .foregroundStyle(.gray100)
            .clipShape(.rect(cornerRadius: 8))
        
    }
}

#Preview {
    struct PreviewContainer: View {
        @State private var taskTitle: String = ""
        
        var body: some View {
            TextInput(placeholder: "Digite algo...", taskTitle: $taskTitle)
                .padding()
        }
    }
    
    return PreviewContainer()
}
