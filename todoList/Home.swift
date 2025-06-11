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
                        .textFiel
                       
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Home()
}
