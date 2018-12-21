//
//  YoutubeProtocols.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 16/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

protocol PresenterToViewProtocol: class {
    func showContent<T>(news: T);
    func showError();
}

protocol InterectorToPresenterProtocol: class {
    func liveNewsFetched<T>(news: T);
    func liveNewsFetchedFailed();
}

protocol PresentorToInterectorProtocol: class {
    var presenter: InterectorToPresenterProtocol? {get set} ;
    func fetchLiveNews();
}

protocol ViewToPresenterProtocol: class {
    var view: PresenterToViewProtocol? {get set};
    var interector: PresentorToInterectorProtocol? {get set};
    var router: PresenterToRouterProtocol? {get set}
    func updateView();
}

protocol PresenterToRouterProtocol: class {
    static func createModule() -> UIViewController;
}
