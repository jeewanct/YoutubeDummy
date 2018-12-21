//
//  SubscriptionRoute.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 17/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit


class ChannelListRoute: PresenterToRouterProtocol{
    
    class func createModule() ->UIViewController{
        let view = mainstoryboard.instantiateViewController(withIdentifier: "ChannelListController") as? ChannelListController
        let presenter: ViewToPresenterProtocol & InterectorToPresenterProtocol = ChannelListPresenter()
        let interactor: PresentorToInterectorProtocol = ChannelListInterector()
        let router: PresenterToRouterProtocol = ChannelListRoute()
        
        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interector = interactor
        interactor.presenter = presenter
        
        return view!
        
        //}
        
        //return UIViewController()
    }
    
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
    
    
}
