//
//  MainViewController.swift
//  SignInWithApplePOC
//
//  Created by Srivastava, Akash on 08/04/20.
//  Copyright © 2020 Srivastava, Akash (US - Mumbai). All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!

    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()

        detailsLabel.text = user?.debugDescription ?? ""
    }
}

