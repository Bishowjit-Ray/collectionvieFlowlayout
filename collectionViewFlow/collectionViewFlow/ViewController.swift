//
//  ViewController.swift
//  collectionViewFlow
//
//  Created by Bishowjit Ray on 9/4/21.
//

import UIKit

var imgArr = [UIImage(named: "image1"),
          UIImage(named: "image2"),
          UIImage(named: "image3"),
          UIImage(named: "image4"),
          UIImage(named: "image5"),
          UIImage(named: "image6"),
          UIImage(named: "image7"),
          UIImage(named: "image2"),
          UIImage(named: "image3"),
          UIImage(named: "image4"),
          UIImage(named: "image8")]

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    let width = UIScreen.main.bounds.width
 
    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionview.delegate = self
        self.collectionview.dataSource = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
        
        
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = imgArr[indexPath.row]
        return cell
        
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 20, left: 10, bottom: 0, right: 10 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let container = self.width - 40
        let cellseize  = container / 2
        return CGSize(width: cellseize, height: 200)
  
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
     
        let vc = storyboard!.instantiateViewController(identifier: "detailsViewController") as? detailsViewController
        vc?.imge = indexPath.row
        
        
        self.navigationController?.pushViewController(vc! , animated: true)
    }

    }


