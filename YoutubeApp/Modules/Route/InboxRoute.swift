//
//  InboxRoute.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 17/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class InboxRoute: PresenterToRouterProtocol{
    
    class func createModule() -> UIViewController{
        
        let view = ChannelListRoute.mainstoryboard.instantiateViewController(withIdentifier: "HomeController") as? HomeController
        
        let presenter: ViewToPresenterProtocol & InterectorToPresenterProtocol = InboxPresenter()
        
        let interactor: PresentorToInterectorProtocol = InboxInteractor()
        
        let router: PresenterToRouterProtocol = InboxRoute()
        
        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interector = interactor
        interactor.presenter = presenter
        
        return view!
        
        
    }
    
    
}
