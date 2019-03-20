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
        let router = AddRouter()
        let interactor = AddInteractor()
        let presenter = AddPresenter(router: router, interactor: interactor)
        let view = AddViewController(presenter: presenter)
        
        presenter.view = view

        return view
    }
}
