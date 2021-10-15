//
//  CountryModel.swift
//  MVVMCountryList
//
//  Created by syed hammad jan on 02/01/2020.
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
