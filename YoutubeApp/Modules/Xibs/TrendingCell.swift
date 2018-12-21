//
//  TrendingCell.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 16/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit


class TrendingCell: UITableViewCell{
    
    @IBOutlet weak var trendingCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        
    }
    
}

extension TrendingCell{
    
    func setup(){
        
        trendingCollectionView.register(UINib(nibName: "TrendingCollectionCell", bundle: nil), forCellWithReuseIdentifier: "TrendingCollectionCell")
        trendingCollectionView.delegate = self
        trendingCollectionView.dataSource = self
        
    }
}

extension TrendingCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingCollectionCell", for: indexPath) as! TrendingCollectionCell
        cell.trendingOptionImage.image = [#imageLiteral(resourceName: "music"), #imageLiteral(resourceName: "news"), #imageLiteral(resourceName: "movies")][indexPath.item]
        cell.trendingOptionTitle.text = ["Music", "News", "Movies"][indexPath.item]
        return cell
    }
    
    
    
}
