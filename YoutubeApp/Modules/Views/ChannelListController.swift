//
//  ChannelListController.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 17/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class ChannelListController: UITableViewController{
    
    var presenter: ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    
    @IBAction func handleBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
}


extension ChannelListController{
    
    func setup(){
        tableView.register(UINib(nibName: "ChannelListCell", bundle: nil), forCellReuseIdentifier: "ChannelListCell")
    }
}

extension ChannelListController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChannelListCell", for: indexPath) as! ChannelListCell
        return cell
    }
}



extension ChannelListController: PresenterToViewProtocol {
    func showContent<T>(news: T) {
        
    }
    
    func showError() {
        
    }
    
    
    
    
}
