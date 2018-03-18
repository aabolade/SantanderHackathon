//
//  ViewController.swift
//  SmartTenant
//
//  Created by Leke Abolade on 17/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let apiClient = APIClient()
    
    @IBOutlet weak var arcView: UIView!
    
    @IBOutlet weak var onTimeLabel: UILabel!
    
    @IBOutlet weak var delayedLabel: UIView!
    
    @IBOutlet weak var missedLabel: UILabel!
    
    @IBOutlet weak var propertyScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiClient.performRequest { (score) in
            guard let score = score else {
                return
            }
            self.propertyScore.text = score
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func refreshButtonTapped(_ sender: UIBarButtonItem) {
        apiClient.performRequest { (score) in
            guard let score = score else {
                return
            }
            self.propertyScore.text = score
        }
        
    }
    
}

