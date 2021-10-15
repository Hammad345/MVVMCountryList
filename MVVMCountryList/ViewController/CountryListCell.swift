//
//  CountryListCell.swift
//  MVVMCountryList
//
//  Created by syed hammad jan on 02/01/2020.
//

import UIKit

class CountryListCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var countryObj : CountryModel? {
        didSet {
            cellDataSet()
        }
    }
    
    func cellDataSet() {
        nameLabel.text = countryObj?.name
        capitalLabel.text = countryObj?.capital
    }

}
