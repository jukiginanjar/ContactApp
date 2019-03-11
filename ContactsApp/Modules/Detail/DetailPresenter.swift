//
//  DetailPresenter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class DetailPresenter {
    var contact: Contact?
    
    var name: String? {
        guard let contact = contact else {
            return nil
        }
        return "Name: \(contact.firstName) \(contact.lastName)"
    }
    
    var phone: String? {
        guard let contact = contact else {
            return nil
        }
        return "Phone: \(contact.phone)"
    }
}
