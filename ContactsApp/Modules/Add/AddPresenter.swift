//
//  AddPresenter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class AddPresenter {
    weak var view: AddViewController?
    
    private let router: AddRouter
    private let interactor: AddInteractor
    
    init(router: AddRouter, interactor: AddInteractor) {
        self.router = router
        self.interactor = interactor
    }
    
    func save(firstName: String, lastName: String, phone: String) {
        let dict = [
            "first_name": firstName,
            "last_name": lastName,
            "phone": phone
        ]
        if let contact = Contact(dictionary: dict) {
            interactor.saveContact(contact)
            router.backToList(view: view)
        }
    }
    
    func cancelHandler() {
        router.backToList(view: view)
    }
}
