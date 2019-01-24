//
//  HomeShopVC.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/22/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import UIKit
import URBNSwiftyConvenience

class HomeShopVC: UITableViewController {
    
    var homeCategories: [String] = ["Mens", "Womens", "Home", "Sale"]
    let homeCell = HomeShopTableViewCell()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Shop"
        tableView.register(HomeShopTableViewCell.self, forCellReuseIdentifier: "categoryCell")
        homeShopVCWhiteOut()
    }
    
    func homeShopVCWhiteOut() {
        tableView.separatorStyle = .none
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    }
}

//MARK: - handling tableview Datasource and Delegate
extension HomeShopVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeCategories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? HomeShopTableViewCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        
        let homeCategory = homeCategories[indexPath.row]
        cell.configureCell(with: homeCategory)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (tableView.cellForRow(at: indexPath) as? HomeShopTableViewCell) != nil {
            
            var array: [Product] = []
            switch indexPath.row {
            case 0:
                array = Product.mensProducts
            case 1:
                array = Product.womensProducts
            case 2:
                array = Product.homeProducts
            case 3:
                array = Product.saleProducts
            default:
                break
            }
            
            let categoryVC = CategoryVC(productCategories: array)
            navigationController?.pushViewController(categoryVC, animated: true)
        }
    }
}
