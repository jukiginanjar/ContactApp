//
//  Contact.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

struct Contact {
    let firstName: String
    let lastName: String
    let phone: String
    
    init?(dictionary: [String: Any]) {
        self.firstName = dictionary["first_name"] as! String
        self.lastName = dictionary["last_name"] as! String
        self.phone = dictionary["phone"] as! String
    }
    
    var dictionaryValue: [String: Any] {
        return [
            "first_name": firstName,
            "last_name": lastName,
            "phone": phone
        ]
    }
}
