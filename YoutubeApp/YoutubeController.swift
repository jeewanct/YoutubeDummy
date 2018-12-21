//
//  YoutubeController.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 16/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class YoutubeController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
}

//MARK: Setup youtube home controller

extension YoutubeController{
    
    func setup(){
        
        
        
        let homeController = HomeRoute.createModule()
        let trendingController = TrendingRoute.createModule()
        let subscriptionController = SubscriptionRoute.createModule()
        let inboxController = InboxRoute.createModule()
        let libraryController = LibraryRoute.createModule()
        
        viewControllers = [homeController, trendingController, subscriptionController, inboxController, libraryController]
        
        
    }
    
}
