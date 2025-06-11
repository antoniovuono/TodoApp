import SwiftUI

struct Home: View {
    var body: some View {
        @State var taskTitle: String = ""
        
        ZStack {
            Color.gray600
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image("logo")
                }
                .frame(maxWidth: .infinity, maxHeight: 130)
                .background(Color.gray700)
                
                HStack() {
                    TextField("Adicione uma nova tarefa", text: $taskTitle)
                        .textInputAutocapitalization(.never)
                        .padding(16)
                        .background(.gray500)
                        .foregroundStyle(.gray100)
                        .clipShape(.rect(cornerRadius: 8))
                    
                    
                    Button(action: {}) {
                        Text("Adicionar")
                            .padding(16)
                            .background(.blueDark)
                            .foregroundStyle(.gray100)
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 24)
                
                Spacer()
            }
        }
    }
}

#Preview {
    Home()
}
