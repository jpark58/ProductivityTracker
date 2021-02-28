//
//  ContentView.swift
//  MyApp
//
//  Created by 진서 on 2/28/21.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskListVM = TaskListViewModel()
    
    let tasks = testDataTasks
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                List{
                    ForEach(taskListVM.taskCellViewModels){ taskCellVM in
                        TaskCell(taskCellVM: taskCellVM)
                    }
                }
                
                Button(action: {}){
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height:20)
                        Text("Add New Task")
                    }
                }
                .padding()
            }
            .navigationTitle("Tasks")
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {
    @ObservedObject var taskCellVM: TaskCellViewModel
    
    var body: some View {
        HStack{
            Image(systemName: taskCellVM.task.completed ? "checkmark.circle.fill":"circle")
                .resizable()
                .frame(width: 20, height:20)
            Text(taskCellVM.task.title)
        }
    }
}
