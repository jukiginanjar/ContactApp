//
//  AddBuilder.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import Foundation

class AddBuilder {
    func main() -> AddViewController {
        let interactor = AddInteractor()
        let presenter = AddPresenter()
        
        let view = AddViewController()
        view.presenter = presenter
        
        let router = AddRouter()
        router.view = view
        
        presenter.interactor = interactor
        presenter.router = router
        
        return view
    }
}
