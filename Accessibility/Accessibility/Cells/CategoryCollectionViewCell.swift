//
//  CategoryCollectionViewCell.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/23/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience

class CategoryCollectionViewCell: UICollectionViewCell {

    private let imageView = UIImageView()
    private let title = UILabel()
    private let price = UILabel()
    
    private let marginOffset: CGFloat = 18.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .purple
        title.backgroundColor = .red
        price.backgroundColor = .yellow
        imageView.backgroundColor = .brown
        
        //TODO: Add Image to layout
        let stackview = UIStackView()
        stackview.axis = .vertical
        stackview.alignment = .fill
        stackview.spacing = 18
        stackview.backgroundColor = .orange
        stackview.addArrangedSubviews(title, price, imageView)
        embed(subview: stackview)
        
    }
        
        required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //TODO: Configure methods if any
    
    
}
