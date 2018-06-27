//
//  AddTodoController.swift
//  TodoIosApp
//
//  Created by Mohammad Sami on 6/26/18.
//  Copyright © 2018 Mohammad Sami. All rights reserved.
//

import UIKit

class AddTodoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    // MARK: Properties
    @IBOutlet weak var saveButton: UIBarButtonItem!

    // MARK: Actions
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil);
    }
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
    }
}
