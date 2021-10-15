//
//  CountryListViewController.swift
//  MVVMCountryList
//
//  Created by syed hammad jan on 02/01/2020.
//

import UIKit

class CountryListViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var capitalTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    var countryListViewModel = CountryListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        countryListViewModel.reloadCountryList = { [weak self] in
            self?.tableView.reloadData()
        }
    }
    
    // Add button Action methode
    @IBAction func addDataBtnHandler(_ sender: Any) {
        if (nameTextField.text?.count ?? 0 > 0) && (capitalTextField.text?.count ?? 0 > 0) {
            countryListViewModel.addCountryData(name: nameTextField.text, capital: capitalTextField.text)
            nameTextField.text = ""
            capitalTextField.text = ""
            self.view.endEditing(true)
        }else {
            // data is not valid alreat message
        }
    }
    
}

extension CountryListViewController : UITableViewDelegate, UITableViewDataSource {
    // table view setup
    func tableViewSetup() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryListViewModel.arrayOfCountries?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CountryListCell = tableView.dequeueReusableCell(withIdentifier: String(describing: CountryListCell.self)) as! CountryListCell
        cell.countryObj = countryListViewModel.arrayOfCountries?[indexPath.row]
        return cell
    }
    
}
