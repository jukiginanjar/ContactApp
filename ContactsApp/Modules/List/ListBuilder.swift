//
//  ListBuilder.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import UIKit

class ListBuilder {
    func main() -> UIViewController {
        let router = ListRouter()
        let interactor = ListInteractor()
        let presenter = ListPresenter(router: router, interactor: interactor)
        let view = ListViewController(presenter: presenter)
        
        presenter.view = view
        
        return UINavigationController(rootViewController: view)
    }
}
