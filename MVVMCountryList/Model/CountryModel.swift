//
//  CountryModel.swift
//  MVVMCountryList
//
//  Created by syed hammad jan on 16/10/2021.
//

import Foundation

class CountryModel {
    var name:String?
    var capital:String?
    
    init() {
        
    }
    init(name:String? , capital:String?) {
        self.name = name
        self.capital = capital
    }
}
