//
//  LibraryController.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 16/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class LibraryController: UITableViewController{
    var presenter: ViewToPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    
}

extension LibraryController{
    
    func setup(){
        tableView.register(UINib(nibName: "LibraryRecentCell", bundle: nil), forCellReuseIdentifier: "LibraryRecentCell")
        tableView.register(UINib(nibName: "LibraryOptionsCell", bundle: nil), forCellReuseIdentifier: "LibraryOptionsCell")
        tableView.register(UINib(nibName: "PlayListCell", bundle: nil), forCellReuseIdentifier: "PlayListCell")
        
    }
}

extension LibraryController{
    
   override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 5
        default:
            return 3
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "LibraryRecentCell", for: indexPath)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "LibraryOptionsCell", for: indexPath) as! LibraryOptionsCell
            cell.optionImage.image = [#imageLiteral(resourceName: "history"), #imageLiteral(resourceName: "downloads"), #imageLiteral(resourceName: "myVideos"), #imageLiteral(resourceName: "purchase"), #imageLiteral(resourceName: "watchLater")][indexPath.item]
            cell.optionLabel.text = ["History", "Downloads", "My videos", "Purchases", "Watch Later"][indexPath.item]
            
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlayListCell", for: indexPath)
            return cell
        }
    }
}


extension LibraryController: PresenterToViewProtocol {
    func showContent<T>(news: T) {
        
    }
    
    func showError() {
        
    }
    
    
    
    
}
