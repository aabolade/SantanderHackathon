//
//  MortgagesDataSource.swift
//  SmartTenant
//
//  Created by Leke Abolade on 18/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import Foundation
import UIKit

class MortgageDataSource: NSObject, UICollectionViewDataSource {
    
    let mortgages = Stub.mortgages
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mortgages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MortgageCell", for: indexPath) as! MortgageViewCell
        
        let mortgage = mortgages[indexPath.row]
        
        cell.companyImage.image = mortgage.companyImage
        
        return cell
    }
}
