//
//  Stub.swift
//  SmartTenant
//
//  Created by Leke Abolade on 18/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import Foundation

class Stub {
    static let properties = [ Property.init(image: #imageLiteral(resourceName: "image 2"), address: "Cumberland Basin, Regents Park NW1", price: "£560,000", companyImage: #imageLiteral(resourceName: "RM")),
                              Property.init(image: #imageLiteral(resourceName: "image1"), address: "Cumberland Basin, Regents Park NW1", price: "£500,000", companyImage: #imageLiteral(resourceName: "Zoopla") )]
    
    static let mortgages = [
      Mortgage(companyImage: #imageLiteral(resourceName: "Santander")), Mortgage(companyImage: #imageLiteral(resourceName: "Santander")), Mortgage(companyImage: #imageLiteral(resourceName: "LBG"))
    ]
}
