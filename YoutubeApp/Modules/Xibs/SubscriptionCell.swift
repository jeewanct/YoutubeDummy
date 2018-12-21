//
//  SubscriptionCell.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 17/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit


class SubscriptionCell: UITableViewCell{
    
    @IBOutlet weak var subscriptionCollectionView: UICollectionView!
  
    weak var parent: SubscriptionController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    @IBAction func handleAll(_ sender: Any) {
        
        parent?.handleAll()
        
    }
    
}


extension SubscriptionCell{
    
    func setup(){
        subscriptionCollectionView.delegate = self
        subscriptionCollectionView.dataSource = self
        subscriptionCollectionView.register(UINib(nibName: "TrendingCollectionCell", bundle: nil), forCellWithReuseIdentifier: "TrendingCollectionCell")
        
    }
}

extension SubscriptionCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingCollectionCell", for: indexPath) as! TrendingCollectionCell
        cell.trendingOptionImage.image = [#imageLiteral(resourceName: "music"), #imageLiteral(resourceName: "news"), #imageLiteral(resourceName: "movies"), #imageLiteral(resourceName: "movies")][indexPath.item]
        cell.trendingOptionTitle.text = ["Sony", "BYN", "Nick", "Carry"][indexPath.item]
        return cell
    }
}
