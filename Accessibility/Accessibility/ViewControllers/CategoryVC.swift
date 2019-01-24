//
//  CategoryVC.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/22/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience

final class CategoryVC: UITableViewController {
    var productCategories: [Product] = []
    
    var categoryCell = CategoryTableViewCell()
    
    override init(style: UITableView.Style) {
        super.init(style: style)
    }
    
    init(productCategories: [Product]) {
        super.init(style: UITableView.Style.plain)
        self.productCategories = productCategories
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationItem.title = "Categories"
        tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: "categoryCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        categoryVCWhiteOut()
    }
    
    func categoryVCWhiteOut() {
        tableView.separatorStyle = .none
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.tintColor = .white
    }
}

//MARK - handling tableview Datasource and Delegate
extension CategoryVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productCategories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryTableViewCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        
        let homeCategory = productCategories[indexPath.row]
        cell.configureCell(with: homeCategory)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = productCategories[indexPath.row]
        
        let pdpVC = PDPVC(product: product)
        navigationController?.pushViewController(pdpVC, animated: true)
    }
}

