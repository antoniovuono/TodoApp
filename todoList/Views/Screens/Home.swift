import SwiftUI

struct Home: View {
    @ObservedObject var taskTitleViewModel = TaskListViewModel()
    @State  var taskTitle: String = ""
    @State  var taskCoutner: Int = 2
    @State var isTextFieldEmpty = true
    
    
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
                    HStack(alignment: .top, spacing: 8) {
                        TextInput(placeholder: "Adicione uma nova tarefa", fieldValidationText: "Você deve dar um título para sua tarefa!" ,isEmpty: taskTitleViewModel.showTextEmptyValidation, taskTitle: $taskTitle)
                        
                        CreateButton(action: {
                            taskTitleViewModel.addTask(title: taskTitle)
                            taskTitle = ""
                            
                        }, iconLabel: "plus.circle")
                        .padding(4)
                    }
                        .padding(.horizontal, 24)
                        .shadow(radius: 4)
                        .offset(y: 55),
                    alignment: .bottom
                    
                )
                .padding(.bottom, 38)
                
                HStack() {
                    TasksLabel(title: "Criadas", taskCounter: taskTitleViewModel.tasks.count, style: .primary)
                    
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
                            ForEach (taskTitleViewModel.tasks) { task in
                                TaskContent(isTaskCompleted: false, taskTitle: task.title, deleteTask: { taskTitleViewModel.deleteTask(taskId: task.id )})
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
