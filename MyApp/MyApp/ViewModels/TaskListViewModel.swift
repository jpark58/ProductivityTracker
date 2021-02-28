//
//  TaskListViewModel.swift
//  MyApp
//
//  Created by 진서 on 2/28/21.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject{
    @Published var taskCellViewModels = [TaskCellViewModel]()
    private var cancellables = Set<AnyCancellable>()
    init(){
        self.taskCellViewModels = testDataTasks.map{
            task in
            TaskCellViewModel(task: task)
        }
    }
}
