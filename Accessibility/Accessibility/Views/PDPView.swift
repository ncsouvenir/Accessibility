//
//  PDPView.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/23/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience

class PDPView: UIView {
    
    let pdpFakeImageView = UIImageView()
    let pdpTitleLabel = UILabel()
    let pdpPriceLabel = UILabel()
    let addToCartButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        
        pdpFakeImageView.backgroundColor = .purple
        
        addToCartButton.setTitle("Add To Cart", for: .normal)
        addToCartButton.titleLabel?.font = .systemFont(ofSize: 18)
        addToCartButton.setTitleColor(UIColor.black, for: .normal)
        addToCartButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 8.0
        stackView.addArrangedSubviews(pdpFakeImageView, pdpTitleLabel, pdpPriceLabel, UIView(), addToCartButton)
        
        pdpFakeImageView.heightAnchor.constraint(equalToConstant: 450).isActive = true
        pdpFakeImageView.widthAnchor.constraint(equalToConstant: 350).isActive = true

        //TODO: - make button stretch out across entire screen width
        addSubviewsWithNoConstraints(stackView)
        
        stackView.topAnchor.constraint(equalTo: self.safeAreaTopAnchor, constant: 30).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func buttonTapped(){
        //TODO: - Voice Over, "item Added to cart"
        print("button tapped")
    }
}

