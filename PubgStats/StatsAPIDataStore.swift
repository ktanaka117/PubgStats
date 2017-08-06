//
//  StatsAPIDataStore.swift
//  PubgStats
//
//  Created by tanaka.kenji on 2017/08/04.
//  Copyright © 2017年 tanaka.kenji. All rights reserved.
//

import Foundation

final class StatsAPIDataStore {
    func getStats()  {
        let url = URL(string: "https://pubgtracker.com/api/profile/pc/ktanaka117")!
        var request = URLRequest(url: url)
        request.addValue("", forHTTPHeaderField: "TRN-Api-Key")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            let json = try! JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
            print("data: \(json)")
            print("response: \(response)")
            print("error: \(error)")
        }
        
        task.resume()
    }
}
