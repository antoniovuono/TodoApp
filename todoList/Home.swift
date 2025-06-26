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
                .frame(maxWidth: .infinity, maxHeight: 130, alignment: .center)
                .background(Color.gray700)
                .overlay(
                    HStack(spacing: 8) {
                        TextField("", text: $taskTitle, prompt: Text("Adicione uma nova tarefa").foregroundStyle(.gray300))
                            .textInputAutocapitalization(.never)
                            .padding(16)
                            .background(.gray500)
                            .foregroundStyle(.gray100)
                            .clipShape(.rect(cornerRadius: 8))
                        
                        
                        Button(action: {
                            print("Produto adicionado")
                        }) {
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundStyle(.gray100)
                                .frame(width: 24, height: 24, alignment: .center)
                                .padding(16)
                                .background(Color.blueDark)
                                .clipShape(.rect(cornerRadius: 8))
                        }
                        .frame(width: 48, height: 48, alignment: .center)
                    }
                    .padding(.horizontal, 24)
                    .shadow(radius: 4)
                    .offset(y: 25),
                    alignment: .bottom
                  
                )
                .padding(.bottom, 38)
                
                HStack {
                    Text("Criadas")
                        .foregroundStyle(.blueLight)
                    
                    Text("Concluídas")
                }
                
                Spacer()
            }

        }
    }
}

#Preview {
    Home()
}
