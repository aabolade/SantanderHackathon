//
//  APIClient.swift
//  SmartTenant
//
//  Created by Leke Abolade on 18/03/2018.
//  Copyright © 2018 Leke Abolade. All rights reserved.
//

import Foundation

class APIClient {
    
    
    let downloader = JSONDownloader()
    
    func performRequest(completion: @escaping (String?) -> Void) {
        
        let url = URL(string: "https://webapplication320180318122105.azurewebsites.net/api/values")
        let request = URLRequest(url: url!)
        let task = downloader.jsonTask(with: request) { json in
            DispatchQueue.main.async {
                guard let json = json else {
                    completion(nil)
                    return
                }
                guard let results = json["Value"] as? String else {
                    completion(nil)
                    return
                }
                completion(results)
            }
            
        }
        task.resume()
    }
}
