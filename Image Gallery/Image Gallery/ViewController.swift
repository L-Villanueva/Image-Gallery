//
//  ViewController.swift
//  Image Gallery
//
//  Created by Luis Villanueva on 12/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
   
    

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
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}

