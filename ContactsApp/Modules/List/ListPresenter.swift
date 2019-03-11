//
//  ListPresenter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class ListPresenter {
    weak var controller: ListViewController?
    
    var interactor: ListInteractor?
    var router: ListRouter?
    
    func getFullNames() -> [String] {
        return interactor?.getContacts().map({ "\($0.firstName) \($0.lastName)" }) ?? []
    }
    
    func addHandler() {
        router?.gotoAddPage()
    }
    
    func selectContactHandler(index: Int) {
        guard let contact = interactor?.getContacts()[index] else {
            return
        }
        router?.gotoDetailPage(contact: contact)
    }
}
