//
//  DetailPresenter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class DetailPresenter {
    private let contact: Contact
    
    init(contact: Contact) {
        self.contact = contact
    }
    
    var name: String? {
        return "Name: \(contact.firstName) \(contact.lastName)"
    }
    
    var phone: String? {
        return "Phone: \(contact.phone)"
    }
}
