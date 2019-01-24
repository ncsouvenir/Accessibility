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
    let addToCartButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .yellow
        isAccessibilityElement = false
        self.shouldGroupAccessibilityChildren = true
        pdpFakeImageView.backgroundColor = .purple
        
        addToCartButton.backgroundColor = .red
        addToCartButton.setTitle("Add To Cart", for: .normal)
        addToCartButton.titleLabel?.font = .systemFont(ofSize: 18)
        addToCartButton.setTitleColor(UIColor.black, for: .normal)
        addToCartButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 8.0
        stackView.addArrangedSubviews(pdpFakeImageView, pdpTitleLabel, pdpPriceLabel, UIView())
        
        pdpFakeImageView.heightAnchor.constraint(equalToConstant: 450).isActive = true
        pdpFakeImageView.widthAnchor.constraint(equalToConstant: 350).isActive = true

        //TODO: - make button stretch out across entire screen width
        addSubviewsWithNoConstraints(stackView)
        
        stackView.topAnchor.constraint(equalTo: self.safeAreaTopAnchor, constant: 30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        addSubviewsWithNoConstraints(addToCartButton)
        
        addToCartButton.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        addToCartButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        addToCartButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30).isActive = true
        addToCartButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -60).isActive = true
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
        accessibilityHint = "Product Detail Page"
        pdpFakeImageView.isAccessibilityElement = false
        pdpPriceLabel.isAccessibilityElement = false
        pdpTitleLabel.isAccessibilityElement = false
    }
    
    func whiteOut() {
        pdpFakeImageView.isHidden = true
        pdpTitleLabel.isHidden = true
        pdpPriceLabel.isHidden = true
        addToCartButton.titleLabel?.isHidden = true
    }
    
    //TODO: - 1. tap gesture recognizer on button
    //TODO: - 2. wrap button in view and add tap gesture recognizer?
    @objc private func buttonTapped(){
        print("kgjlgjfd")
        isAccessibilityElement = true
        initCustomAccessibility(with: .button)
        setAccessibility(label: "\(addToCartButton)", value: "Add To Cart", hint: "Double tap to add")
    }
}

