//
//  SubscriptionsController.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 16/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class SubscriptionController: UITableViewController{
    var presenter: ViewToPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

}

//MARK: Setup Home controller

extension SubscriptionController{
    
    func setup(){
        navigationController?.hidesBarsOnSwipe = true
        tableView.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
        tableView.register(UINib(nibName: "SubscriptionCell", bundle: nil), forCellReuseIdentifier: "SubscriptionCell")
    }
    
    func handleAll(){
        let channelList = ChannelListRoute.createModule()
        navigationController?.pushViewController(channelList, animated: true)
    }
    
}

//MARK: Setup Home controller table view

extension SubscriptionController{
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 20
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubscriptionCell", for: indexPath) as! SubscriptionCell
            cell.parent = self
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
            return cell
        }
        
        
    }
    
}

extension SubscriptionController: PresenterToViewProtocol {
    func showContent<T>(news: T) {
        
    }
    
    func showError() {
        
    }
    
    
    
    
}
