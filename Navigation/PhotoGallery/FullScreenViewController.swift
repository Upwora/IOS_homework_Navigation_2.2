//
//  FullScreenViewController.swift
//  Navigation
//
//  Created by V SEO on 25.06.2022.
//

import UIKit

class FullScreenViewController: UIViewController {
    
    private lazy var horizontCollection = makeCollectionView(scrollDirection: .horizontal)
    let identifier = "FullScreenViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        horizontCollection.delegate = self
        horizontCollection.dataSource = self
        horizontCollection.register(FullScreenViewCell.self, forCellWithReuseIdentifier: FullScreenViewCell.identifier)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension FullScreenViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryFile.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.identifier, for: indexPath) as! PhotosCollectionViewCell
        cell.newImageView.image = UIImage(named: galleryFile[indexPath.item])
        return UICollectionViewCell()
    }
    
    
}
