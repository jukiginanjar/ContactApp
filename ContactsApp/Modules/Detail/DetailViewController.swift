//
//  DetailViewController.swift
//  ContactsApp
//
//  Created by Nanang Rafsanjani on 11/03/19.
//  Copyright © 2019 Nanang Rafsanjani. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var phoneLabel: UILabel!
    
    private let presenter: DetailPresenter
    
    init(presenter: DetailPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = presenter.name
        phoneLabel.text = presenter.phone
    }
}
