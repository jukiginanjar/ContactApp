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
        let interactor = ListInteractor()
        let presenter = ListPresenter()
        
        
        let view = ListViewController()
        view.presenter = presenter
        
        let router = ListRouter()
        router.view = view
        
        presenter.interactor = interactor
        presenter.router = router
        
        return UINavigationController(rootViewController: view)
    }
}
