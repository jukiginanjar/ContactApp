//
//  AddRouter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import UIKit

class AddRouter {
    weak var view: UIViewController?
    
    func backToList() {
        view?.navigationController?.popViewController(animated: true)
    }
}
