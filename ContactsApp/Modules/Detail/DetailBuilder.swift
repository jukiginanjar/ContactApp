//
//  DetailBuilder.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import UIKit

class DetailBuilder {
    func main(contact: Contact) -> UIViewController {
        let presenter = DetailPresenter()
        presenter.contact = contact
        
        let view = DetailViewController()
        view.presenter = presenter

        return view
    }
}
