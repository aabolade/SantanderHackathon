//
//  Property.swift
//  SmartTenant
//
//  Created by Leke Abolade on 18/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import Foundation
import UIKit

class Property {
    
    let image: UIImage
    let address: String
    let price: String
    let companyImage: UIImage
    
    init(image: UIImage, address: String, price: String, companyImage: UIImage) {
        self.address = address
        self.image = image
        self.price = price
        self.companyImage = companyImage
    }
    
    
}
