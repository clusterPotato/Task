//
//  TaskDetailViewController.swift
//  Task
//
<<<<<<< Updated upstream
//  Created by Cameron Stuart on 12/29/20.
=======
//  Created by Gavin Craft on 4/21/21.
>>>>>>> Stashed changes
//

import UIKit

class TaskDetailViewController: UIViewController {
<<<<<<< Updated upstream

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var taskNotesTextView: UITextView!
    @IBOutlet weak var taskDueDatePicker: UIDatePicker!
    
    var task: Task?
    var date: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = taskNameTextField.text, !name.isEmpty else { return }
        if let task = task {
            TaskController.shared.update(task: task, name: name, notes: taskNotesTextView.text, dueDate: date)
        } else {
            TaskController.shared.createTaskWith(name: name, notes: taskNotesTextView.text, dueDate: date)
        }
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func dueDatePickerDateChanged(_ sender: Any) {
        self.date = taskDueDatePicker.date
    }
    
    func updateViews() {
        guard let task = task else { return }
        taskNameTextField.text = task.name
        taskNotesTextView.text = task.notes
        taskDueDatePicker.date = task.dueDate ?? Date()
    }
=======
    //MARK: - iboutlets
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //MARK: - ibaction
    @IBAction func saveButtonPressed(_ sender: Any) {
        titleField.becomeFirstResponder()
        titleField.resignFirstResponder()
    }
    
    @IBAction func dueDatePickerTimeChanged(_ sender: Any) {
    }
    //MARK: - properties
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

>>>>>>> Stashed changes
}
