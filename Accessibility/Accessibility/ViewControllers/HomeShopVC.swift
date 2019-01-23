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
    var categories: [String] = ["Mens", "Womens", "Home", "Sale"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Shop"
        tableView.register(HomeShopTableViewCell.self, forCellReuseIdentifier: "categoryCell")
        //whiteOut()
    }
    
    func whiteOut() {
        tableView.separatorStyle = .none
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    }
}

extension HomeShopVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? HomeShopTableViewCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        
        let category = categories[indexPath.row]
        
        cell.configureCell(with: category)
        
        return cell
    }
}

extension HomeShopVC {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO: set the cell so you have access to it
        
        //TODO: Instantiate cell with Product info for that category and present categoryVC
    }
}
