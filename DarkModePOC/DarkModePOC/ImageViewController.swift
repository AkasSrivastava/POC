//
//  ImageViewController.swift
//  DarkModePOC
//
//  Created by Srivastava, Akash on 14/04/20.
//  Copyright © 2020 Srivastava, Akash (US - Mumbai). All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var userPreferenceImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        userPreferenceImage.image = UIImage(named: "Image")
    }
}
