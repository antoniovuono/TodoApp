import SwiftUI

struct Home: View {
    @ObservedObject var taskList = TaskListViewModel()
    @State  var taskTitle: String = ""
    @State  var taskCoutner: Int = 2
    
    
    var body: some View {
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
                            taskList.addTask(title: taskTitle)
                            taskTitle = ""
                            
                        }, iconLabel: "plus.circle")
                    }
                        .padding(.horizontal, 24)
                        .shadow(radius: 4)
                        .offset(y: 25),
                    alignment: .bottom
                    
                )
                .padding(.bottom, 38)
                
                HStack() {
                    TasksLabel(title: "Criadas", taskCounter: taskCoutner)
                    
                    Spacer()
                    
                    TasksLabel(title: "Concluídas", taskCounter: taskCoutner, style: .secondary)
                }
                .padding(.vertical, 21)
                .overlay(
                    Divider().background(.gray300), alignment: .bottom
                )
                .padding(.horizontal, 24)
                
                VStack() {
                    if taskCoutner == 0 {
                        EmptyList()
                    } else {
                        ScrollView {
                            ForEach (taskList.tasks) { task in
                                TaskContent(isTaskCompleted: false, taskTitle: task.title, deleteTask: { print("Item deletado") })
                            }
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    Home()
}
