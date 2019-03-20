//
//  ListPresenter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class ListPresenter {
    weak var view: ListViewController?
    
    private let interactor: ListInteractor
    private let router: ListRouter
    
    init(router: ListRouter, interactor: ListInteractor) {
        self.interactor = interactor
        self.router = router
    }
    
    func getFullNames() -> [String] {
        return interactor.getContacts().map({ "\($0.firstName) \($0.lastName)" })
    }
    
    func addHandler() {
        router.gotoAddPage(view: view)
    }
    
    func selectContactHandler(index: Int) {
        let contact = interactor.getContacts()[index]
        router.gotoDetailPage(view: view, contact: contact)
    }
}
