//
//  ViewController.swift
//  DarkModePOC
//
//  Created by Srivastava, Akash on 13/04/20.
//  Copyright © 2020 Srivastava, Akash (US - Mumbai). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var darkModeSwitcher: UISwitch!
    @IBOutlet weak var btnChangeDarkMode: UIButton!
    @IBOutlet weak var employeeDetailTableView: UITableView!
    @IBOutlet weak var lblDarkMode: UILabel!
    @IBOutlet weak var lblTableHeader: UILabel!

    var arrEmployee = [Employee]()
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeDetail()
        employeeDetailTableView.dataSource = self
        updateUIForDarkMode()
    }

    /// Appending employee details to employee array to bind with table view
    private func employeeDetail() {
        arrEmployee.append(Employee(empName: "John", empID: 101))
        arrEmployee.append(Employee(empName: "Mable", empID: 102))
        arrEmployee.append(Employee(empName: "Korney", empID: 103))
        arrEmployee.append(Employee(empName: "Lilas", empID: 104))
        arrEmployee.append(Employee(empName: "Rycca", empID: 105))
        arrEmployee.append(Employee(empName: "Gasper", empID: 106))
    }

    /// Update UI when settings changed to Dark Mode
    private func updateUIForDarkMode() {
        // setting up default behaviour of ui controls
        darkModeSwitcher.isOn = false
        btnChangeDarkMode.backgroundColor = UIColor(named: "btnColor")
        btnChangeDarkMode.layer.cornerRadius = 10
    }

    /// Switch action to override color them for light and dark mode, you can define color set for each theme
    /// - Parameter sender: UISwitch
    @IBAction func darkModeSwitcher(_ sender: UISwitch) {
        if sender.isOn {
            lblDarkMode.textColor = UIColor(named: "colorDemo")
            lblTableHeader.textColor = UIColor(named: "colorDemo")
        }
        else {
            lblDarkMode.textColor = .red
            lblTableHeader.textColor = .red
        }
    }

    @IBAction func btnChangeDarkMode(_ sender: Any) {
    }

}

extension ViewController : UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrEmployee.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeTableViewCell", for: indexPath) as! EmployeeTableViewCell
        let employee = arrEmployee[indexPath.row]
        cell.lblEmployeeName.text = "Emp Name : \(employee.employeeName ?? "NA")"
        cell.lblEmployeeCode.text = "Emp Code : \(employee.employeeID ?? 000)"
        return cell
    }
}
