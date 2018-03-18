//
//  ExtraServicesViewController.swift
//  SmartTenant
//
//  Created by Leke Abolade on 18/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import UIKit

class ExtraServicesViewController: UIViewController {
    
    @IBOutlet weak var mortgagesCollectionView: UICollectionView!
    
    @IBOutlet weak var propertyCollectionView: UICollectionView!
    
    let mortgagesDataSource = MortgageDataSource()
    let proprtiesDataSource = PropertyDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mortgagesCollectionView.dataSource = mortgagesDataSource
        propertyCollectionView.dataSource = proprtiesDataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
