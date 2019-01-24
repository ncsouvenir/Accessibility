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
    let price: String
    
    //TODO: - Use these to set up and populate size and color pickers: let colors: [String]? let sizes: [String]?
    //TODO: - Format price so accessibility feature can read it as "64 dollars but is formatted like so: $64.00"
    static let mensProducts = [Product(image: nil, title: "UO Colorblock Wind Pant", price: "64"),
                               Product(image: nil, title: "Fila Disruptor Sneaker", price: "80"),
                               Product(image: nil, title: "GT Bicycles Tee", price: "34"),
                               Product(image: nil, title: "Adidas Kaval Graphic Hoodie Sweatshirt", price: "100"),
                               Product(image: nil, title: "Stance Tune Squad Hoop Sock", price: "25"),
                               Product(image: nil, title: "Adidas Coururoy Bucket Hat", price: "35"),
                               Product(image: nil, title: "Champion Script Knit Pompom Beanie", price: "30"),
                               Product(image: nil, title: "Vintage Stilton Sweater", price: "120")]
    
    static let womensProducts = [Product(image: nil, title: "Sienne Jumpsuit", price: "168"),
                                 Product(image: nil, title: "Free People Movement Sculpt Crop Sports Bra", price: "48"),
                                 Product(image: nil, title: "Cloth and Stone belted Chambray Jumpsuit", price: "158"),
                                 Product(image: nil, title: "Woodruff Top", price: "68"),
                                 Product(image: nil, title: "Janis Dress", price: "130"),
                                 Product(image: nil, title: "Resort Alpine Sweater Coat", price: "190"),
                                 Product(image: nil, title: "Dylan Cropped Joggers", price: "78")]

    static let homeProducts = [Product(image: nil, title: "Mina Sofa", price: "3000"),
                               Product(image: nil, title: "Velvet Elowen Chair", price: "398"),
                               Product(image: nil, title: "organic Rosette Quilt", price: "298"),
                               Product(image: nil, title: "Gleaming Primrose Mirror", price: "1,348"),
                               Product(image: nil, title: "Odette Nine-Drawer Dresser", price: "2,298"),
                               Product(image: nil, title: "Celestial Coaster Set", price: "40"),
                               Product(image: nil, title: "Capri Blue Candle Tin", price: "14"),
                               Product(image: nil, title: "Bowen Sofa", price: "1,898")]

    static let saleProducts = [Product(image: nil, title: "Joanie Skirt", price: "50"),
                               Product(image: nil, title: "Eloise Sheer Anklet", price: "10"),
                               Product(image: nil, title: "Victoria Cami", price: "40"),
                               Product(image: nil, title: "UO Wyatt Parker Coat", price: "80"),
                               Product(image: nil, title: "Sorel Cheyanne 2 Boot", price: "115"),
                               Product(image: nil, title: "Trixie Mattel Tee", price: "20"),
                               Product(image: nil, title: "FILA Mylo Tee", price: "30"),
                               Product(image: nil, title: "UO Classics Collection Nail Polish", price: " 3 for 10")]
}
