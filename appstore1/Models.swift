//
//  Models.swift
//  appstore1
//
//  Created by Corey Townsend on 3/6/19.
//  Copyright © 2019 Corey Townsend inc. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    var name: String?
    var app: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var apps = [App]()
        let ecodropApp = App()
        ecodropApp.name = "Trash for Cash"
        ecodropApp.imagename = "EcoDrop"
        ecodropApp.category = "Lifestyle"
        apps.append(ecodropApp)
        
        //logic
        
        bestNewAppsCategory.app = apps
        
        let bestNewGamesCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Games"
        
        var bestNewGamesApps = [App]()
        
        let facebookApp = App()
        facebookApp.name = "Facebook"
        facebookApp.category = "Games"
        
        bestNewGamesApps.append(facebookApp)
        
        bestNewGamesCategory.app = bestNewGamesApps
        
        
        
        return [bestNewAppsCategory, bestNewGamesCategory]
    }
}

class App: NSObject {
    var id: NSNumber?
    var name: String?
    var category: String?
    var imagename: String?
    var price: NSNumber?
    
}
