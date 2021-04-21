//
//  TaskListTableViewController.swift
//  Task
//
<<<<<<< Updated upstream
//  Created by Cameron Stuart on 12/29/20.
=======
//  Created by Gavin Craft on 4/21/21.
>>>>>>> Stashed changes
//

import UIKit

class TaskListTableViewController: UITableViewController {
<<<<<<< Updated upstream

    override func viewDidLoad() {
        super.viewDidLoad()
        TaskController.shared.loadFromPersistenceStore()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskController.shared.tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as? TaskTableViewCell else { return UITableViewCell() }

        let task = TaskController.shared.tasks[indexPath.row]
        
        cell.delegate = self
        cell.task = task

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let taskToDelete = TaskController.shared.tasks[indexPath.row]
            TaskController.shared.delete(task: taskToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTaskDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? TaskDetailViewController else { return }
            let task = TaskController.shared.tasks[indexPath.row]
            destination.task = task
        }
    }
}

extension TaskListTableViewController: TaskCompletionDelegate {
    func taskCellButtonTapped(_ sender: TaskTableViewCell) {
        guard let task = sender.task else { return }
        TaskController.shared.toggleIsComplete(task: task)
        sender.updateViews()
=======
    
    
    
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TaskController.shared.tasks.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            TaskController.shared.delete(task: TaskController.shared.tasks[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? TaskDetailViewController else {return}
        guard let index = tableView.indexPathForSelectedRow else {return}
        destination
>>>>>>> Stashed changes
    }
}
