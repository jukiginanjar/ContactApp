//
//  ListInteractor.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class ListInteractor {
    func getContacts() -> [Contact] {
        guard let raws = UserDefaults.standard.object(forKey: saveKey) as? [[String: Any]] else {
            return []
        }
        return raws.compactMap({ Contact(dictionary: $0) })
    }
}
