//
//  EmployeeTableViewCell.swift
//  DarkModePOC
//
//  Created by Srivastava, Akash on 14/04/20.
//  Copyright © 2020 Srivastava, Akash (US - Mumbai). All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblEmployeeName: UILabel!
    @IBOutlet weak var lblEmployeeCode: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
