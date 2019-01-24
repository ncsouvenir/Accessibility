//
//  HomeShopTableViewCell.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/22/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience

class HomeShopTableViewCell: UITableViewCell, Accessible {

    private let nameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel.textAlignment = .center
        nameLabel.font = nameLabel.font.withSize(100)
        contentView.embed(subview: nameLabel, insets: UIEdgeInsets(top: 30, left: 0, bottom: 30, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureCell(with name: String) {
        nameLabel.text = name
        //TODO: hide labels to set font color to white for demo
        //nameLabel.textColor = .white
        setAccessibility(label: nameLabel.text ?? "",
                         value: "category",
                         hint: "Send you to \(nameLabel.text ?? "") catalog")
    }
}
