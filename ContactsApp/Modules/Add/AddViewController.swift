//
//  AddViewController.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    var presenter: AddPresenter?
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Add Contact"
    }
    
    @IBAction
    func savePressed() {
        presenter?.save(firstName: firstNameTF.text!, lastName: lastNameTF.text!, phone: phoneTF.text!)        
    }
    
    @IBAction
    func cancelPressed() {
        presenter?.cancelSave()
    }
}
