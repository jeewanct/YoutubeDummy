//
//  InboxController.swift
//  YoutubeApp
//
//  Created by JEEVAN TIWARI on 16/12/18.
//  Copyright © 2018 Book My Saloon. All rights reserved.
//

import UIKit

class InboxController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var movingView: UIView!
    var presenter: ViewToPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func handleMessages(_ sender: Any) {
        collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .right, animated: true)
        animate(xAxis: 0)
    }
    
    
    @IBAction func handleNotifications(_ sender: Any) {
        collectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .right, animated: true)
        animate(xAxis: UIScreen.main.bounds.width / 2 )
        
    }
    
}


//MARK: Setup Home controller

extension InboxController{
    
    func setup(){
        //navigationController?.hidesBarsOnSwipe = true
    }
    
}

//MARK: Setup Home controller table view

extension InboxController: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InboxCell", for: indexPath) as! InboxCell
        if indexPath.item == 0 {
            cell.cellType = "message"
        }else{
            cell.cellType = "notification"
        }
        return cell
    }

    
}


extension InboxController{
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        animate(xAxis: targetContentOffset.pointee.x / 2)
        
    }
    
    func animate(xAxis: CGFloat){
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseIn, animations: {
            self.movingView.transform = CGAffineTransform(translationX: xAxis , y: 0)
        }, completion: nil)
        
    }
    
}


extension InboxController: PresenterToViewProtocol {
    func showContent<T>(news: T) {
        
    }
    
    func showError() {
        
    }
    
    
    
    
}
