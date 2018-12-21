//
//  LibraryRoute.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 17/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class LibraryRoute: PresenterToRouterProtocol{
    
    class func createModule() -> UIViewController{
        
        let view = ChannelListRoute.mainstoryboard.instantiateViewController(withIdentifier: "HomeController") as? HomeController
        
        let presenter: ViewToPresenterProtocol & InterectorToPresenterProtocol = LibraryPresenter()
        
        let interactor: PresentorToInterectorProtocol = LibraryInteractor()
        
        let router: PresenterToRouterProtocol = LibraryRoute()
        
        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interector = interactor
        interactor.presenter = presenter
        
        return view!
        
        
    }
    
    
}
