//
//  Product.swift
//  Accessibility
//
//  Created by Nicole Souvenir on 1/22/19.
//  Copyright © 2019 Nicole Souvenir. All rights reserved.
//

import Foundation
import UIKit

struct Product {
    let image: UIImage?
    let title: String
    let price: Double
    let colors: [String]?
    let sizes: [String]?
    
    static let mensProducts = [Product(image: nil, title: "UO Colorblock Wind Pant", price: 64.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Fila Disruptor Sneaker", price: 80.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "GT Bicycles Tee", price: 34.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Adidas Kaval Graphic Hoodie Sweatshirt", price: 100.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "UO Colorblock Wind Pant", price: 64.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Fila Disruptor Sneaker", price: 80.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "GT Bicycles Tee", price: 34.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Adidas Kaval Graphic Hoodie Sweatshirt", price: 100.00, colors: nil, sizes: nil)]
    
    //TODO: re-populate with correct data
    static let womensProducts = [Product(image: nil, title: "UO Colorblock Wind Pant", price: 64.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Fila Disruptor Sneaker", price: 80.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "GT Bicycles Tee", price: 34.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Adidas Kaval Graphic Hoodie Sweatshirt", price: 100.00, colors: nil, sizes: nil)]
    
    static let homeProducts = [Product(image: nil, title: "UO Colorblock Wind Pant", price: 64.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Fila Disruptor Sneaker", price: 80.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "GT Bicycles Tee", price: 34.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Adidas Kaval Graphic Hoodie Sweatshirt", price: 100.00, colors: nil, sizes: nil)]
    
    static let saleProducts = [Product(image: nil, title: "UO Colorblock Wind Pant", price: 64.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Fila Disruptor Sneaker", price: 80.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "GT Bicycles Tee", price: 34.00, colors: nil, sizes: nil),
                               Product(image: nil, title: "Adidas Kaval Graphic Hoodie Sweatshirt", price: 100.00, colors: nil, sizes: nil)]
}
