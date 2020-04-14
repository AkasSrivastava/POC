//
//  Employee.swift
//  DarkModePOC
//
//  Created by Srivastava, Akash on 14/04/20.
//  Copyright © 2020 Srivastava, Akash (US - Mumbai). All rights reserved.
//

import Foundation
import UIKit

struct Employee {
    var employeeName : String?
    var employeeID : Int?

    init(empName : String, empID : Int) {
        self.employeeName = empName
        self.employeeID = empID
    }
}
