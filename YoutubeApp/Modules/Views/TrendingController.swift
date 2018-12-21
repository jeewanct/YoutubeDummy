//
//  TrendingController.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 16/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class TrendingController: UITableViewController{
    var presenter: ViewToPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

}

//MARK: Setup Home controller

extension TrendingController{
    
    func setup(){
        navigationController?.hidesBarsOnSwipe = true
        tableView.register(UINib(nibName: "TrendingCell", bundle: nil), forCellReuseIdentifier: "TrendingCell")
        tableView.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    
}

//MARK: Setup Home controller table view

extension TrendingController{
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
        default:
            return 5
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrendingCell", for: indexPath) as! TrendingCell
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
            return cell
        }
        
        
    }
    
}

extension TrendingController: PresenterToViewProtocol {
    func showContent<T>(news: T) {
        
    }
    
    func showError() {
        
    }
    
    
    
    
}
