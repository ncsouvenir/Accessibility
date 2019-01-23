//
//  PDPVC.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/22/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience

class PDPVC: UIViewController {
    
    var product: Product
    var pdpView = PDPView()
    
    init(product: Product) {
        self.product = product
        
        super.init(nibName: nil, bundle: nil)
        
        navigationItem.title = product.title
        pdpView.pdpFakeImageView.image = product.image
        pdpView.pdpTitleLabel.text = product.title
        pdpView.pdpPriceLabel.text = "$ \(product.price)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.embed(subview: pdpView)
    }
}
