//
//  InboxCollectionCell.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 17/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class InboxCell: UICollectionViewCell{
    
    @IBOutlet weak var inboxTableView: UITableView!
    var cellType: String?
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    
    
}


extension InboxCell{
    
    func setup(){
        inboxTableView.delegate = self
        inboxTableView.dataSource = self
        
        inboxTableView.register(UINib(nibName: "InboxMessageCell", bundle: nil), forCellReuseIdentifier: "InboxMessageCell")
     
        inboxTableView.register(UINib(nibName: "InboxNotificationCell", bundle: nil), forCellReuseIdentifier: "InboxNotificationCell")
      

    }
    
}

extension InboxCell: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cellIdentifier = ""
        if cellType == "message"{
            cellIdentifier = "InboxMessageCell"
        }else{
            cellIdentifier = "InboxNotificationCell"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
    
    
}
