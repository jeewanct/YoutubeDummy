//
//  SubscriptionPresenter.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 17/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import Foundation


class SubscriptionPresenter: ViewToPresenterProtocol{
    var view: PresenterToViewProtocol?
    
    var interector: PresentorToInterectorProtocol?
    
    var router: PresenterToRouterProtocol?
    
    func updateView() {
        
    }
    
}

extension SubscriptionPresenter: InterectorToPresenterProtocol{
    
    func liveNewsFetched<T>(news: T) {
        
    }
    
    func liveNewsFetchedFailed() {
        
    }
}
