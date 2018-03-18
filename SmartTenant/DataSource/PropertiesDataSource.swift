//
//  PropertiesDataSource.swift
//  SmartTenant
//
//  Created by Leke Abolade on 18/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import Foundation
import UIKit

class PropertyDataSource: NSObject, UICollectionViewDataSource {
    
    let properties = Stub.properties
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return properties.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PropertyCell", for: indexPath) as! PropertyViewCell
        let property = properties[indexPath.row]
        
        cell.addressLabel.text = property.address
        cell.companyImage.image = property.companyImage
        cell.priceLabel.text = property.price
        cell.propertyImage.image = property.image
        return cell
    }
    
    
}
