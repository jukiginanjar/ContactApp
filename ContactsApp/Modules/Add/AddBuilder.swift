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
        let presenter = AddPresenter()        
        let view = AddViewController(presenter: presenter)
        
        let router = AddRouter()
        router.view = view
        presenter.router = router
        
        let interactor = AddInteractor()
        presenter.interactor = interactor

        return view
    }
}
