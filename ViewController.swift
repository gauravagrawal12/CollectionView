//
//  ViewController.swift
//  Day16collectionview
//
//  Created by Felix 09 on 29/08/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    fileprivate let insets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    fileprivate let numberofItemsperrow = 4
    
    var numberArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
   var fotos = [ #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball"),#imageLiteral(resourceName: "north_east"),#imageLiteral(resourceName: "south"), #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball"),#imageLiteral(resourceName: "north_east"),#imageLiteral(resourceName: "south"), #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball"),#imageLiteral(resourceName: "north_east"),#imageLiteral(resourceName: "south"), #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball"),#imageLiteral(resourceName: "north_east"),#imageLiteral(resourceName: "south"), #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball"),#imageLiteral(resourceName: "north_east"),#imageLiteral(resourceName: "south"), #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball"),#imageLiteral(resourceName: "north_east"),#imageLiteral(resourceName: "south"), #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball"),#imageLiteral(resourceName: "north_east"),#imageLiteral(resourceName: "south"), #imageLiteral(resourceName: "west"),#imageLiteral(resourceName: "ball")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return insets.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return insets
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let totalEmptyspace = insets.left + insets.right + insets.left*CGFloat(numberofItemsperrow-1)
        let totalwidth = collectionView.bounds.width - totalEmptyspace
        let width = totalwidth / CGFloat(numberofItemsperrow)
        return CGSize(width: width, height: width)
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.myimage?.image = fotos[indexPath.row]
        cell.namelabel.text = String(numberArray[indexPath.row])
         return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

