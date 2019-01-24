//
//  CategoryTableViewCell.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/23/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience


class CategoryTableViewCell: UITableViewCell {

    private let fakeImageView = UIImageView()
    private let titleLabel = UILabel()
    private let priceLabel = UILabel()
    
    //TODO: - Replace constants with margins struct
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        isAccessibilityElement = false
        shouldGroupAccessibilityChildren = true
        titleLabel.textAlignment = .left
        titleLabel.font = titleLabel.font.withSize(20)
        fakeImageView.backgroundColor = .orange
        
        let stackview = UIStackView()
        stackview.axis = .vertical
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.spacing = 5.0
        stackview.addArrangedSubviews(fakeImageView, titleLabel, priceLabel)
        
        fakeImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        fakeImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        contentView.embed(subview: stackview, insets: UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(with product: Product) {
        fakeImageView.image = product.image
        titleLabel.text = product.title
        priceLabel.text = "\(product.price)"
        applyAccessibility()
    }

    final func applyAccessibility() {
        isAccessibilityElement = true
        accessibilityLabel = "\(titleLabel.text ?? ""), \(priceLabel.text ?? "") dollars"
        accessibilityHint = "Double tap for more"
        fakeImageView.isAccessibilityElement = false
        priceLabel.isAccessibilityElement = false
        titleLabel.isAccessibilityElement = false
    }
}
