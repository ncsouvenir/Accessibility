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
    var buttonView = ButtonView()
    
    init(product: Product) {
        self.product = product
       
        super.init(nibName: nil, bundle: nil)
        
        navigationItem.title = product.title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubviewsWithNoConstraints(pdpView)
        view.addSubviewsWithNoConstraints(buttonView)
        
        pdpView.topAnchor.constraint(equalTo: view.safeAreaTopAnchor, constant: 30).isActive = true
        pdpView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pdpView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        buttonView.topAnchor.constraint(equalTo: pdpView.bottomAnchor, constant: 100).isActive = true
        buttonView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        buttonView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        buttonView.bottomAnchor.constraint(equalTo: view.safeAreaBottomAnchor).isActive = true

        pdpView.configureView(with: product)
        buttonView.addToCartButton.addTarget(self, action: #selector(buttonDoubleTapped), for: .touchUpInside)
        self.navigationController?.navigationBar.tintColor = .white
        pdpView.PDPViewWhiteOut()
    }
    
    @objc private func buttonDoubleTapped() {
        setUpAlert()
    }
    
    func setUpAlert() {
        
        let successAlert = UIAlertController(title: "Success, product added to cart", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {
            UIAlertAction in
            self.dismiss(animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
            UIAlertAction in
            self.dismiss(animated: true, completion: nil)
        }
        successAlert.addAction(okAction)
        successAlert.addAction(cancelAction)
        
        self.present(successAlert, animated: true, completion: nil)
    }
}
