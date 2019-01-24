//
//  PDPView.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/23/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience

class PDPView: UIView, Accessible {
    
    let pdpFakeImageView = UIImageView()
    let pdpTitleLabel = UILabel()
    let pdpPriceLabel = UILabel()
    
    init() {
        super.init(frame: .zero)
        
        isAccessibilityElement = false
        self.shouldGroupAccessibilityChildren = true

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 30.0
        stackView.addArrangedSubviews(pdpFakeImageView, pdpTitleLabel, pdpPriceLabel)
        
        pdpFakeImageView.heightAnchor.constraint(equalToConstant: 450).isActive = true
        pdpFakeImageView.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
        embed(subview: stackView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView(with product: Product) {
        pdpFakeImageView.image = product.image
        pdpTitleLabel.text = product.title
        pdpPriceLabel.text = "$ \(product.price)"
        applyAccessibility()
    }
    
    final func applyAccessibility() {
        isAccessibilityElement = true
        accessibilityLabel = "\(pdpTitleLabel.text ?? ""), \(pdpPriceLabel.text ?? "")"
        accessibilityHint = "Add to cart below"
        pdpFakeImageView.isAccessibilityElement = false
        pdpPriceLabel.isAccessibilityElement = false
        pdpTitleLabel.isAccessibilityElement = false
    }
    
    func PDPViewWhiteOut() {
        pdpFakeImageView.isHidden = true
        pdpTitleLabel.isHidden = true
        pdpPriceLabel.isHidden = true
    }
}

class ButtonView: UIView, Accessible {
     let addToCartButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        
        initCustomAccessibility(with: .button)
        setAccessibility(label: "Add To Cart", value: nil, hint: "Double Tap to add product")
        
        addToCartButton.setTitle("Add To Cart", for: .normal)
        addToCartButton.titleLabel?.font = .systemFont(ofSize: 18)
        //MARK: - don't forget to set color back to white!
        addToCartButton.setTitleColor(UIColor.white, for: .normal)
        
        embed(subview: addToCartButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
