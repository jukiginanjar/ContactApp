//
//  ListRouter.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation
import Swinject

class ListRouter {
    private let container = Container.shared
    
    func gotoAddPage(view: ListViewController?) {
//        guard let add = container.resolve(AddViewController.self) else {
//            return
//        }
        let add = AddBuilder().main()
        view?.navigationController?.pushViewController(add, animated: true)
    }
    
    func gotoDetailPage(view: ListViewController?, contact: Contact) {
//        guard let detail = container.resolve(DetailViewController.self, argument: contact) else {
//            return
//        }
        let detail = DetailBuilder().main(contact: contact)
        view?.navigationController?.pushViewController(detail, animated: true)
    }
}
