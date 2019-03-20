//
//  AddViewController.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    
    private let presenter: AddPresenter
    
    init(presenter: AddPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Add Contact"
    }
    
    @IBAction
    func savePressed() {
        presenter.save(firstName: firstNameTF.text!, lastName: lastNameTF.text!, phone: phoneTF.text!)
    }
    
    @IBAction
    func cancelPressed() {
        presenter.cancelHandler()
    }
}
