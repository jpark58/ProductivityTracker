//
//  Task.swift
//  MyApp
//
//  Created by 진서 on 2/28/21.
//

import Foundation


struct Task: Identifiable{
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG
let testDataTasks = [
    Task(title: "implement", completed: true),
    Task(title: "this is false", completed: false)
]
#endif
