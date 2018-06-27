//
//  AddTodoController.swift
//  TodoIosApp
//
//  Created by Mohammad Sami on 6/26/18.
//  Copyright © 2018 Mohammad Sami. All rights reserved.
//

import UIKit

class AddTodoViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var todoTitle: UITextField!
    @IBOutlet weak var todoDesc: UITextField!
    
    // MARK: Initialize
    override func viewDidLoad() {
        super.viewDidLoad();
        
        todoTitle.delegate = self;
        todoDesc.delegate = self;
        
        updateSaveButtonState()
    }
    
    // MARK: Actions
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil);
    }
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
//        let todo = Todo(
    }
    
    // MARK: Private Methods
    private func updateSaveButtonState() {
        let title = todoTitle.text ?? ""
        let desc = todoDesc.text ?? ""
        print("\(title.isEmpty) \(desc.isEmpty) \(title.isEmpty && desc.isEmpty)");
        saveButton.isEnabled = !title.isEmpty && !desc.isEmpty
        
    }
    
    // MARK: TextField Mehods
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false;
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.updateSaveButtonState()
    }
}
