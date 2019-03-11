//
//  AddPresenter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class AddPresenter {
    var router: AddRouter?
    var interactor: AddInteractor?
    
    func save(firstName: String, lastName: String, phone: String) {
        let dict = [
            "first_name": firstName,
            "last_name": lastName,
            "phone": phone
        ]
        if let contact = Contact(dictionary: dict) {
            interactor?.saveContact(contact)
            router?.backToList()
        }
    }
    
    func cancelHandler() {
        router?.backToList()
    }
}
