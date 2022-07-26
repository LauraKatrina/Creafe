//
//  FolderViewController.swift
//  Creafe
//
//  Created by Hansel, Ranti, Victor and Laura Katrina on 26/07/22.
//

import UIKit

class FolderViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "folderCollectionViewCell", for: indexPath) as! folderCollectionViewCell
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "folderCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "folderCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        

    }
    

   

}
