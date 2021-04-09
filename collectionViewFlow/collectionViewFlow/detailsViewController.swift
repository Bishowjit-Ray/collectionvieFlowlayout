//
//  detailsViewController.swift
//  collectionViewFlow
//
//  Created by Bishowjit Ray on 9/4/21.
//

import UIKit

class detailsViewController: UIViewController {
     var imge = Int()
    @IBOutlet weak var img: UIImageView!
   
    override func viewDidLoad() {
  
        super.viewDidLoad()
        img.image = imgArr[imge]
    }
    

}
