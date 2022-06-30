//
//  PhotosViewController.swift
//  Navigation
//
//  Created by V SEO on 16.06.2022.
//

import UIKit


class PhotosViewController: UIViewController {
    
    private lazy var verticalCollection = makeCollectionView(scrollDirection: .vertical)
    var postArray = Post.postView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        setupCollections()
        self.navigationItem.title = "Photo gallery"
        navigationController?.navigationBar.isHidden = false
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        
        navigationController?.navigationBar.isHidden = true
    }
    
    private func setupCollections() {
        verticalCollection.dataSource = self
        verticalCollection.delegate = self
        verticalCollection.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.identifier)
    }
    
    private func layout() {
        view.addSubview(verticalCollection)
        let screenSize: CGRect = UIWindow().frame
        verticalCollection.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            verticalCollection.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            verticalCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            verticalCollection.heightAnchor.constraint(equalToConstant: screenSize.height),
            verticalCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

// MARK: - UICollectionViewDataSource

extension PhotosViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        switch collectionView {
        case verticalCollection:
            return 1
        default:
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case verticalCollection:
            return galleryFile.count
        default:
            return galleryFile.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case verticalCollection:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.identifier, for: indexPath) as! PhotosCollectionViewCell
            cell.newImageView.image = UIImage(named: galleryFile[indexPath.item])
            print("Show items: ",indexPath.item)
            cell.doFirst(color: .orange)
            return cell
        default:
            return UICollectionViewCell()
        }
        
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension PhotosViewController: UICollectionViewDelegateFlowLayout {
    var sideInset: CGFloat { return 8 }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case verticalCollection:
            let width = (collectionView.bounds.width - sideInset * 4) / 3
            return CGSize(width: width, height: width)
        default:
            return .zero
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        sideInset
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: sideInset, left: sideInset, bottom: sideInset, right: sideInset)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        sideInset
    }


    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Pressed ",indexPath.section, indexPath.item)
        //print(#function)
        let vc = PhotosViewController()
        
        let currentViewController = UIApplication.shared.keyWindow?.rootViewController
//        currentViewController?.dismiss(animated: true, completion: nil)
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
//        if indexPath.item == 0 {
//            print("Zero ")
//            navigationController?.pushViewController(vc, animated: true)
//            currentViewController?.present(vc, animated: true, completion: nil)
//        }
//
//
//        vc.view.backgroundColor = .orange
//        vc.view.frame = CGRect(x: 0, y: 0, width: 200, height: 700)
    
//        navigationController?.pushViewController(vc, animated: true)
//        UIView.animate(withDuration: 1.0,
//                                delay: 0.0,
//                                usingSpringWithDamping: 2.5,
//                                initialSpringVelocity: 1.3,
//                       options: .beginFromCurrentState) { [self] in UIImage(galleryFile[indexPath.item]). = UIColor.red.cgColor } completion: { _ in self.statusTextField.layer.borderColor = UIColor.black.cgColor }
    }
    
    
    
}


  
    
  
