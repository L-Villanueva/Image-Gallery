//
//  ViewController.swift
//  Image Gallery
//
//  Created by Luis Villanueva on 12/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
   
    var viewModel = MainViewModel()
    

    @IBOutlet weak var albumCollectionView: UICollectionView!
    
    override func loadView() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        albumCollectionView.delegate = self
        albumCollectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.album.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let albumImage = viewModel.album[indexPath.row]
        
        let cell = albumCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! AlbumCell
        
        cell.imageView.image = albumImage.value(forKeyPath: "image") as? String
        
        return cell
    }
}

