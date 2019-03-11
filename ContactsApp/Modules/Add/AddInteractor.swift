//
//  AddInteractor.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class AddInteractor {
    func saveContact(_ contact: Contact) {
        var raws = (UserDefaults.standard.object(forKey: saveKey) as? [[String: Any]]) ?? []
        raws.append(contact.dictionaryValue)
        
        UserDefaults.standard.set(raws, forKey: saveKey)
        UserDefaults.standard.synchronize()
    }
}
