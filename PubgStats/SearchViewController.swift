//
//  SearchViewController.swift
//  PubgStats
//
//  Created by tanaka.kenji on 2017/08/07.
//  Copyright © 2017年 tanaka.kenji. All rights reserved.
//

import UIKit

final class SearchViewController: UIViewController {
    
    override func viewDidLoad() {
        let apiDataStore = StatsAPIDataStore()
        apiDataStore.getStats(nickName: "ktanaka117")
    }
    
}
