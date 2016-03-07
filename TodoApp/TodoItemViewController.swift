//
//  TodoItemViewController.swift
//  TodoApp
//
//  Created by Kaori Sawamura on 2/20/16.
//  Copyright © 2016 Kaori Sawamura. All rights reserved.
//

import UIKit

class TodoItemViewController: UIViewController {

    @IBOutlet weak var todoField: UITextField!
    var task: Todo? = nil
    
    @IBAction func save(sender: UIBarButtonItem) {
        if task != nil {
            editTask()
        } else {
            createTask()
        }
        navigationController!.popViewControllerAnimated(true)
    }
    
    func createTask() {
        let newTask: Todo! = Todo.MR_createEntity()
        newTask.item = todoField.text
        newTask.managedObjectContext!.MR_saveToPersistentStoreAndWait()
    }
    
    func editTask() {
        task?.item = todoField.text
        task?.managedObjectContext!.MR_saveToPersistentStoreAndWait()
    }

    @IBAction func cancel(sender: UIBarButtonItem) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        if let taskTodo = task {
            todoField.text = taskTodo.item
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
