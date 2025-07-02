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
                        TextInput(placeholder: "Adicione uma nova tarefa", taskTitle: $taskTitle)
                        
                        CreateButton(action: {
                            print("Tarefa criada")
                        }, iconLabel: "plus.circle")
                    }
                        .padding(.horizontal, 24)
                        .shadow(radius: 4)
                        .offset(y: 25),
                    alignment: .bottom
                    
                )
                .padding(.bottom, 38)
                
                HStack() {
                    TasksLabel(title: "Criadas", taskCounter: 0)
                    
                    Spacer()
                    
                    TasksLabel(title: "Concluídas", taskCounter: 20, style: .secondary)
                }
                .padding(.vertical, 21)
                .overlay(
                    Divider().background(.gray300), alignment: .bottom
                )
                .padding(.horizontal, 24)
                
                VStack() {
                    EmptyList()
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    Home()
}
