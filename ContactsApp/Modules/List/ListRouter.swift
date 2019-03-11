//
//  ListRouter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class ListRouter {
    weak var view: ListViewController?
    
    func gotoAddPage() {
        let add = AddBuilder().main()        
        view?.navigationController?.pushViewController(add, animated: true)
    }
    
    func gotoDetailPage(contact: Contact) {
        let detail = DetailBuilder().main(contact: contact)
        view?.navigationController?.pushViewController(detail, animated: true)
    }
}
