//
//  CountryListViewModel.swift
//  MVVMCountryList
//
//  Created by syed hammad jan on 16/10/2021.
//

import Foundation

class CountryListViewModel {
    
    var reloadCountryList = {() -> () in}
    
    var arrayOfCountries : [CountryModel]? = [] {
        didSet {
            reloadCountryList()
        }
    }
    
    func addCountryData(name:String? , capital:String?) {
        arrayOfCountries?.append(CountryModel(name: name, capital: capital))
    }
    
}
